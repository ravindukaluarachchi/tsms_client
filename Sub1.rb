require 'Qt4'
require './tu_sub1'
require './confirm_tour_request'
require 'savon'

class Sub1 < Qt::Widget

  slots 'row_double_click(QModelIndex)'

  def initialize(parent = nil)
        super(parent);

	@ui = Ui::Form.new
	@ui.setup_ui(self)
	m = Qt::StandardItemModel.new(0,1)
	m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Tour ID"))
	m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Customer ID"))
	m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Customer Name"))	
	m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Date"))
	m.setHorizontalHeaderItem(4,Qt::StandardItem.new("Time"))
	m.setHorizontalHeaderItem(5,Qt::StandardItem.new("No Of Days"))
	m.setHorizontalHeaderItem(6,Qt::StandardItem.new("Location"))
	client = Savon.client(wsdl: 'http://localhost:8084/TsmsServer/WS?wsdl')
	response = client.call(:get_requested_tours)
	begin
	@tours = response.to_hash[:get_requested_tours_response][:return][:tours]
	if @tours[0] != nil then
          i = 0
	  @tours.each{|tour|
	    puts tour
	    tour[:start_date] = tour[:start_date].to_s.gsub("T00:00:00+05:30","")
	             
	    i1 = Qt::StandardItem.new("#{tour[:id]}" )
	    i1.setEditable(false)
	    i2 = Qt::StandardItem.new("#{tour[:customer][:id]}" )
	    i2.setEditable(false)
	    i3 = Qt::StandardItem.new("#{tour[:customer][:name]}" )
	    i3.setEditable(false)
	    i4 = Qt::StandardItem.new("#{tour[:start_date]}")
	    i4.setEditable(false)
	    i5 = Qt::StandardItem.new("#{tour[:start_time]}")
	    i5.setEditable(false)	
	    i6 = Qt::StandardItem.new("#{tour[:no_of_days]}")
	    i6.setEditable(false)	
	    i7 = Qt::StandardItem.new("#{tour[:location][:name]}")
	    i7.setEditable(false)	
	    m.setItem(i,0,i1)
	    m.setItem(i,1,i2)
	    m.setItem(i,2,i3)
  	    m.setItem(i,3,i4)
	    m.setItem(i,4,i5)
	    m.setItem(i,5,i6)
	    m.setItem(i,6,i7)
	    i = i + 1
 	  }
	else 
	  @tours[:start_date] = @tours[:start_date].to_s.gsub("T00:00:00+05:30","")
	             
	  i1 = Qt::StandardItem.new("#{@tours[:id]}" )
	  i1.setEditable(false)
	  i2 = Qt::StandardItem.new("#{@tours[:customer][:id]}" )
	  i2.setEditable(false)
	  i3 = Qt::StandardItem.new("#{@tours[:customer][:name]}" )
	  i3.setEditable(false)
	  i4 = Qt::StandardItem.new("#{@tours[:start_date]}")
	  i4.setEditable(false)
	  i5 = Qt::StandardItem.new("#{@tours[:start_time]}")
	  i5.setEditable(false)	
	  i6 = Qt::StandardItem.new("#{@tours[:no_of_days]}")
	  i6.setEditable(false)	
	  i7 = Qt::StandardItem.new("#{@tours[:location][:name]}")
	  i7.setEditable(false)	
	  m.setItem(0,0,i1)
	  m.setItem(0,1,i2)
	  m.setItem(0,2,i3)
  	  m.setItem(0,3,i4)
	  m.setItem(0,4,i5)
	  m.setItem(0,5,i6)
	  m.setItem(0,6,i7)
	    
          
	  
	end
	rescue
	  Qt::MessageBox.information self, "Information", "There are no tour requests!."
	end
	@ui.tableView.setModel(m)
	#@ui.tableView.connect(SIGNAL 'doubleClicked(QModelIndex)'){'row_double_click(QModelIndex)'}
	Qt::Object.connect(@ui.tableView, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
 	
  end

  def row_double_click(v)
    puts @tours[v.row ]
    ConfirmTourRequest.new(@tours[v.row ]).show
  end

end
