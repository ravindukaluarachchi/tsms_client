require './ui_view_drivers'
require './save_driver'
require 'savon'

class ViewDrivers < Qt::Frame

	slots 'row_double_click(QModelIndex)'

	def initialize(parent = nil)
	  super(parent)
	  begin
	  	
	  
	  @ui = Ui::ViewDriversFrame.new
	  @ui.setup_ui(self)
	  load_data
	  Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
 	  rescue Exception => e
	  	puts e
	  end
    end

  def row_double_click(v)
  	
     SaveDriver.new(@drivers[v.row],self).show
    #ConfirmTourRequest.new(@tours[v.row - 1]).show
  end

  def load_data
	  @client = Savon.client(wsdl: 'http://localhost:8084/TsmsServer/WS?wsdl')
	  response = @client.call(:find_driver_entites)
	  r = response.to_hash[:find_driver_entites_response][:return]
	  @drivers = r[:drivers]

	  m = Qt::StandardItemModel.new(0,1)
	  m.setHorizontalHeaderItem(0,Qt::StandardItem.new("NIC"))
	  m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Licence No"))	
	  m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Title"))
	  m.setHorizontalHeaderItem(3,Qt::StandardItem.new("First Name"))
	  m.setHorizontalHeaderItem(4,Qt::StandardItem.new("Last Name"))
	  m.setHorizontalHeaderItem(5,Qt::StandardItem.new("Sex"))
	  m.setHorizontalHeaderItem(6,Qt::StandardItem.new("BloodGroup"))
	  m.setHorizontalHeaderItem(7,Qt::StandardItem.new("Martial Status"))
	  m.setHorizontalHeaderItem(8,Qt::StandardItem.new("Mobile 1"))
	  m.setHorizontalHeaderItem(9,Qt::StandardItem.new("Telephone 1"))
	  m.setHorizontalHeaderItem(10,Qt::StandardItem.new("Address 1"))	
	  m.setHorizontalHeaderItem(11,Qt::StandardItem.new("City 1"))
	  m.setHorizontalHeaderItem(12,Qt::StandardItem.new("Country 1"))
	  m.setHorizontalHeaderItem(13,Qt::StandardItem.new("Mobile 2"))
	  m.setHorizontalHeaderItem(14,Qt::StandardItem.new("Telephone 2"))
	  m.setHorizontalHeaderItem(15,Qt::StandardItem.new("Address 2"))	
	  m.setHorizontalHeaderItem(16,Qt::StandardItem.new("City 2"))
	  m.setHorizontalHeaderItem(17,Qt::StandardItem.new("Country 2"))
	  m.setHorizontalHeaderItem(18,Qt::StandardItem.new("Emergency Contact Name"))
	  m.setHorizontalHeaderItem(19,Qt::StandardItem.new("Emergency Contact Relationship"))
	  m.setHorizontalHeaderItem(20,Qt::StandardItem.new("Emergency Contact Number"))
	  m.setHorizontalHeaderItem(21,Qt::StandardItem.new("Experience"))
	  i = 0
	  atrs = [:nic,:licence_number, :title, :first_name, :last_name, :sex, :blood_group, :martial_status, :mobile, :telephone1,:address1,:city1,:country1,:mobile2,  :telephone2,:address2, :city2,  :country2, :emergencey_contact_name, :emergencey_contact_relationship,:emergencey_contact_number,  :experience]

	  @drivers.each{ |driver|
	  	j = 0
	  	atrs.each{ |s|
	  	  it = Qt::StandardItem.new(driver[s].to_s)
  		  it.setEditable(false)
  		  m.setItem(i,j,it)
  		  j = j +1
	  	}
 		
	    i = i + 1
	  }

	  @ui.table.setModel(m)
  end
end