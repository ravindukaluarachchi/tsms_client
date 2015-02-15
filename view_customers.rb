require './ui_view_customers'
require './wscon'
require './add_rate_to_customer'

class ViewCustomers < Qt::Frame

  slots 'row_double_click(QModelIndex)'
  
  def initialize parent = nil
    super parent
    @ui = Ui::ViewCustomers.new
    @ui.setup_ui self
    load_data
    Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
 	  
  end

  def row_double_click(v)  	
    SaveCustomer.new(@customers[v.row],self).show
  end

  def load_data	  
  	  
	  m = Qt::StandardItemModel.new(0,1)
	  m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Id"))
	  m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Name"))	
	  m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Contact Person Name"))
	  m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Website"))
	  m.setHorizontalHeaderItem(4,Qt::StandardItem.new("Fax"))
	  m.setHorizontalHeaderItem(5,Qt::StandardItem.new("Email"))
	  m.setHorizontalHeaderItem(6,Qt::StandardItem.new("Telephone 2"))
	  m.setHorizontalHeaderItem(7,Qt::StandardItem.new("Telephone 2"))
	  m.setHorizontalHeaderItem(8,Qt::StandardItem.new("Mobile 1"))
	  m.setHorizontalHeaderItem(9,Qt::StandardItem.new("Mobile 2"))
	  m.setHorizontalHeaderItem(10,Qt::StandardItem.new("Address"))	
	  m.setHorizontalHeaderItem(11,Qt::StandardItem.new("City"))
	  m.setHorizontalHeaderItem(12,Qt::StandardItem.new("Country"))
	  m.setHorizontalHeaderItem(13,Qt::StandardItem.new("Postal Code"))
	  m.setHorizontalHeaderItem(14,Qt::StandardItem.new("Password"))
	 
	  @client = WsCon::client
	  response = @client.call(:find_customer_entites)
	  r = response.to_hash[:find_customer_entites_response][:return]
	  @customers = r[:customers]
	  puts @customers
	  atrs = [:id,:name,:contact_person_name,:website,:fax,:email1,:telephone1,:telephone2,:mobile1 ,:mobile2,:address1,:city,:country,:postal_code,:password]
	  i = 0
	  @customers.each{ |customer|
		j = 0
	  	atrs.each{ |s|	
	  	  it = Qt::StandardItem.new(customer[s].to_s)
  		  it.setEditable(false)
  		  m.setItem(i,j,it)
  		  j = j + 1
	  	}
 		
	    i = i + 1
	  }

	  @ui.table.setModel(m)
  end

end