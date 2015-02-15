require './ui_save_supplier'
require './wscon'
class SaveSupplier < Qt::Frame

  def initialize(supplier = nil ,prevForm = nil,parent = nil)
    super parent
    @prevForm = prevForm
    @ui = Ui::SaveSupplierFrame.new
    @ui.setup_ui self
    @ui.btn_save.connect(SIGNAL :clicked){save_supplier}
    fill_data supplier if supplier != nil
  end

  def save_supplier
    name = @ui.txt_name.text
    remarks = @ui.ptxt_remarks.plainText
    postalcode1 = @ui.txt_postal1.text
    address1 = @ui.ptxt_address1.plainText
    city1 = @ui.txt_city1.text
    country1 = @ui.txt_country1.text
    postalcode2 = @ui.txt_postal2.text
    address2 = @ui.ptxt_address2.plainText
    city2 = @ui.txt_city2.text
    country2 = @ui.txt_country2.text
    telephone1 = @ui.txt_telephone1.text
    telephone2 = @ui.txt_telephone2.text
    mobile1 = @ui.txt_mobile1.text
    mobile2 = @ui.txt_mobile2.text    
    accountNumber = @ui.txt_accountno.text

    client = WsCon::client
    begin    
    	if @id == nil then    
    	  client.call(:create_supplier,message:{arg0: {name: name,remarks: remarks, postalcode1: postalcode1,address1:address1 ,city1: city1,country1: country1,postalcode2: postalcode2,address2: address2,city2: city2,country2: country2,telephone1:  telephone1,telephone2: telephone1,mobile1: mobile1,mobile2: mobile2,accountNumber: accountNumber}})
    	else
    	  client.call(:edit_supplier,message:{arg0: {id: @id,name: name,remarks: remarks, postalcode1: postalcode1,address1:address1 ,city1: city1,country1: country1,postalcode2: postalcode2,address2: address2,city2: city2,country2: country2,telephone1:  telephone1,telephone2: telephone1,mobile1: mobile1,mobile2: mobile2,accountNumber: accountNumber}})
    	end
    	Qt::MessageBox.information self,'Information','Saving Supplier Success!'
    	@prevForm.load_data if @prevForm != nil
    	self.close
    rescue => e
    	puts e
    	Qt::MessageBox.information self,'Error','Saving Supplier Failed!'
    end

  end

  def fill_data supplier
  	@id = supplier[:id]
  	@ui.txt_name.text = supplier[:name]
	@ui.ptxt_remarks.plainText = supplier[:remarks]  
	@ui.txt_postal1.text = supplier[:postalcode1]
	@ui.ptxt_address1.plainText = supplier[:address1]
	@ui.txt_city1.text = supplier[:city1]
	@ui.txt_country1.text = supplier[:country1]
	@ui.txt_postal2.text = supplier[:postalcode2]
	@ui.ptxt_address2.plainText = supplier[:address2]
	@ui.txt_city2.text = supplier[:city2]
	@ui.txt_country2.text =supplier[:country2]
	@ui.txt_telephone1.text = supplier[:telephone1]
	@ui.txt_telephone2.text = supplier[:telephone2]
	@ui.txt_mobile1.text = supplier[:mobile1]
	@ui.txt_mobile2.text = supplier[:mobile2]    
	@ui.txt_accountno.text = supplier[:account_number]

  end
end
