require './ui_view_suppliers'
require './wscon'

class ViewSuppliers < Qt::Frame

  slots 'row_double_click(QModelIndex)'

  def initialize parent=nil
    super parent
    @ui = Ui::ViewSupplierFrame.new
    @ui.setup_ui self

    load_data
    Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
 	  
  end

  def row_double_click(v)  	
    SaveSupplier.new(@suppliers[v.row],self).show
  end


  def load_data	  
	  m = Qt::StandardItemModel.new(0,1)
	  m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Id"))
	  m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Name"))	
	  m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Account No"))
	  m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Remarks"))
	  m.setHorizontalHeaderItem(4,Qt::StandardItem.new("Mobile 1"))
	  m.setHorizontalHeaderItem(5,Qt::StandardItem.new("Mobile 2"))
	  m.setHorizontalHeaderItem(6,Qt::StandardItem.new("Telephone 2"))
	  m.setHorizontalHeaderItem(7,Qt::StandardItem.new("Telephone 2"))
	  m.setHorizontalHeaderItem(8,Qt::StandardItem.new("postalcode1"))
	  m.setHorizontalHeaderItem(9,Qt::StandardItem.new("Address1"))	
	  m.setHorizontalHeaderItem(10,Qt::StandardItem.new("City1"))
	  m.setHorizontalHeaderItem(11,Qt::StandardItem.new("Country1"))	  
	  m.setHorizontalHeaderItem(12,Qt::StandardItem.new("postalcode2"))
	  m.setHorizontalHeaderItem(13,Qt::StandardItem.new("Address2"))	
	  m.setHorizontalHeaderItem(14,Qt::StandardItem.new("City2"))
	  m.setHorizontalHeaderItem(15,Qt::StandardItem.new("Country2"))
	  @client = WsCon::client
	  response = @client.call(:find_supplier_entites)
	  r = response.to_hash[:find_supplier_entites_response][:return]
	  @suppliers = r[:suppliers]	  
	  atrs = [:id,:name,:account_number,:remarks,:mobile1 ,:mobile2,:telephone1,:telephone2,:postalcode1,:address1,:city1,:country1 ,:postalcode2 ,:address2 ,:city2 ,:country2]
	  i = 0
	  @suppliers.each{ |supplier|
		j = 0
	  	atrs.each{ |s|	
	  	  it = Qt::StandardItem.new(supplier[s])
  		  it.setEditable(false)
  		  m.setItem(i,j,it)
  		  j = j + 1
	  	}
 		
	    i = i + 1
	  }
	 
	  @ui.table.setModel(m)
  end

end
