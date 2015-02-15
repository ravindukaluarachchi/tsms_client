require './ui_save_customer'
require './add_rate_to_customer'
require './wscon'
class SaveCustomer < Qt::Frame

  attr_reader :ui

  slots 'row_click(QModelIndex)'

  def initialize customer = nil,prevFrame = nil ,parent = nil
    super parent
    @ui = Ui::SaveCustomerFrame.new
    @ui.setup_ui self
    @ui.btn_add.connect(SIGNAL :clicked){add_rate}    
    @ui.btn_delete.connect(SIGNAL :clicked){delete_customer_rate}
    @ui.btn_save.connect(SIGNAL :clicked){save_customer}
    Qt::Object.connect(@ui.table, SIGNAL('clicked(QModelIndex)'), self, SLOT('row_click(QModelIndex)'))
    @customer = customer
    @prevFrame = prevFrame

    fill_data customer if customer != nil
       
  end


  def add_rate
    AddRateToCustomer.new(@customer,self).show
  end

  def save_customer
    name = @ui.txt_name.text
    cpn = @ui.txt_contact_person.text
    website = @ui.txt_website.text
    fax = @ui.txt_fax.text
    email = @ui.txt_email.text
    mobile1 = @ui.txt_mobile1.text
    mobile2 = @ui.txt_mobile2.text
    telephone1 = @ui.txt_telephone1.text
    telephone2 = @ui.txt_telephone2.text
    postalcode = @ui.txt_postal.text
    address = @ui.ptxt_address.plainText
    city = @ui.txt_city.text
    country = @ui.txt_country.text
    password = @ui.txt_password.text
    begin
      @client = WsCon::client
      if @id == nil then     
        @client.call(:create_customer,message:{arg0:{name: name,telephone1: telephone1 ,telephone2: telephone2,mobile1: mobile1 ,mobile2: mobile2,email1: email,address1: address ,city: city,country: country,postalCode: postalcode,contactPersonName: cpn,website: website,fax: fax,password: password}})
      else
      	@client.call(:edit_customer,message:{arg0:{id: @id,name: name,telephone1: telephone1 ,telephone2: telephone2,mobile1: mobile1 ,mobile2: mobile2,email1: email,address1: address ,city: city,country: country,postalCode: postalcode,contactPersonName: cpn,website: website,fax: fax,password: password}})
      end
      Qt::MessageBox.information self, "Information", "Customer Saved Successfully !."
      @prevFrame.load_data if @prevFrame != nil
      self.close
	rescue
      Qt::MessageBox.information self, "Information", "Failed to save Customer !."
    end
  end

  def fill_data customer
    @id = customer[:id]
    @ui.txt_name.text = customer[:name]
    @ui.txt_contact_person.text = customer[:contactPersonName]
    @ui.txt_website.text = customer[:website]
    @ui.txt_fax.text = customer[:fax]
    @ui.txt_email.text = customer[:email1]
    @ui.txt_mobile1.text = customer[:mobile1]
    @ui.txt_mobile2.text = customer[:mobile2]
    @ui.txt_telephone1.text = customer[:telephone1]
    @ui.txt_telephone2.text = customer[:telephone2]
    @ui.txt_postal.text = customer[:postalCode]
    @ui.ptxt_address.plainText = customer[:address1]
    @ui.txt_city.text = customer[:city]
    @ui.txt_country.text = customer[:country]
    @ui.txt_password.text = customer[:password]
    fill_location_data
  end

  def fill_location_data
    m = Qt::StandardItemModel.new(0,1)
    m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Location"))
    m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Rate"))



    @client = WsCon::client if @client == nil
    location_data = @client.call(:find_customer_locations,message:{arg0: @customer[:id]})
    puts "====================><><><><><><><><><======"
    cl = location_data.to_hash[:find_customer_locations_response][:return]
    #puts cl[0]		
    
    if cl != nil then	
    @cl = cl[:customer_locations]
    if @cl[0] != nil then
      i = 0
      @cl.each{|c|       	   	    	             
        i1 = Qt::StandardItem.new("#{c[:location][:name]}" )
        i1.setEditable(false)
        i2 = Qt::StandardItem.new("#{c[:rate]}" )
        i2.setEditable(false)
        m.setItem(i,0,i1)
        m.setItem(i,1,i2)
        i = i + 1
      }
    else
      i1 = Qt::StandardItem.new("#{@cl[:location][:name]}" )
      i1.setEditable(false)
      i2 = Qt::StandardItem.new("#{@cl[:rate]}" )
      i2.setEditable(false)
      m.setItem(0,0,i1)
      m.setItem(0,1,i2)      

    end
    end
    @ui.table.setModel(m)
    @selected_row = nil
  end

  def delete_customer_rate
    @client = WsCon::client if @client == nil
    if @selected_row != nil then 
      if @cl[0] != nil then
        id = @cl[@selected_row][:id]
      else
        id = @cl[:id]
      end
      #id = @cl[@selected_row][:id]
      @client.call(:delete_location_from_customer,message:{arg0: id})
      fill_location_data
    else
      Qt::MessageBox.information self, "Information", "No record selected!"
    end
  end

  def row_click(v)
    @selected_row = v.row
  end

end
