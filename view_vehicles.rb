require './ui_view_vehicles'
require './wscon'
class ViewVehicles < Qt::Frame
  
  slots 'row_double_click(QModelIndex)'

  def initialize(parent = nil)
  	super(parent)
  	
  	@ui = Ui::ViewVehicleFrame .new
    @ui.setup_ui(self)

    load_data
    Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
 	  
  end

  def row_double_click(v)  	
    SaveVehicle.new(@vehicles[v.row],self).show
  end


  def load_data	   
	  m = Qt::StandardItemModel.new(0,1)
	  m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Id"))
	  m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Number"))	
	  m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Modal"))
	  m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Colour"))
	  m.setHorizontalHeaderItem(4,Qt::StandardItem.new("Seat Capacity"))
	  m.setHorizontalHeaderItem(5,Qt::StandardItem.new("Insurance Expiry Date"))
	  m.setHorizontalHeaderItem(6,Qt::StandardItem.new("Licence Expiry Date"))
	  m.setHorizontalHeaderItem(7,Qt::StandardItem.new("Supplier Id"))
	  m.setHorizontalHeaderItem(8,Qt::StandardItem.new("Supplier Name"))
	 
	  client = WsCon::client
	  response = client.call(:find_vehicle_entites)
	  r = response.to_hash[:find_vehicle_entites_response][:return]
	  @vehicles = r[:vehicles]	  
	  #,:supplier[:name]
	  atrs = [:id,:number,:model,:color,:seat_capacity ,:insurance_expiry_date,:licence_expiry_date]
	  i = 0
	  @vehicles.each{ |vehicle|
		j = 0
	  	atrs.each{ |s|	
	  	  it = Qt::StandardItem.new(vehicle[s].to_s)
  		  it.setEditable(false)
  		  m.setItem(i,j,it)
  		  j = j + 1
	  	}
	  	its1 = Qt::StandardItem.new(vehicle[:supplier][:id])
  		its1.setEditable(false)
 		m.setItem(i,j,its1)

 		its2 = Qt::StandardItem.new(vehicle[:supplier][:name])
  		its2.setEditable(false)
 		m.setItem(i,j + 1 ,its2)

	    i = i + 1
	  }

	  @ui.table.setModel(m)
  end
end

