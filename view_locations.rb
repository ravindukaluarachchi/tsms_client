require './ui_view_locations'
require './wscon'
class ViewLocations < Qt::Frame
  
  slots 'row_double_click(QModelIndex)'

  def initialize(parent = nil)
  	super(parent)
  	@ui = Ui::ViewLocationFrame.new
    @ui.setup_ui(self)
    load_data
    Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
    
  end

  def row_double_click(v)   
    SaveLocation.new(@locations[v.row],self).show
  end

  def load_data	  
	  m = Qt::StandardItemModel.new(0,1)
	  m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Id"))
	  m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Name"))	
	  m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Distance"))
	  m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Rate"))
	  	 
    client = WsCon::client
    response = client.call(:find_locations)
    r = response.to_hash[:find_locations_response][:return]
    @locations = r[:locations]
    
    atrs = [:id,:name,:distance,:rate]
    i = 0
    @locations.each{ |location|
      j = 0
      atrs.each{ |s|  
        it = Qt::StandardItem.new(location[s])
        it.setEditable(false)
        m.setItem(i,j,it)
        j = j + 1
      }
    
      i = i + 1
    }

	  @ui.table.setModel(m)
  end
end