require './ui_view_vehicle_expenses'
require './wscon'

class ViewVehicleExpenses < Qt::Frame

  slots 'row_double_click(QModelIndex)'

  def initialize parent=nil
    super parent
    @ui = Ui::ViewVehicleExpensesFrame.new
    @ui.setup_ui self

    load_data
    Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
 	  
  end

  def row_double_click(v)  	
    SaveVehicleExpense.new(@ves[v.row],self).show
  end


  def load_data	  
  	#id;    
    #vehicle;    
    #expenses;    
    #expenseDate;
    #amount;
    #remarks;
    m = Qt::StandardItemModel.new(0,1)
	m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Id"))
	m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Date"))	
	m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Vehicle"))
	m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Expense"))
	m.setHorizontalHeaderItem(4,Qt::StandardItem.new("Amount"))
	m.setHorizontalHeaderItem(5,Qt::StandardItem.new("Remarks"))
	@client = WsCon::client
	response = @client.call(:find_vehicle_expenses)
	r = response.to_hash[:find_vehicle_expenses_response][:return]
	@ves = r[:vehicle_expenses]	  
	  
	i = 0
	@ves.each{ |v|
	  it1 = Qt::StandardItem.new(v[:id])
  	  it1.setEditable(false)
  	  m.setItem(i,0,it1)
  		 
	  it2 = Qt::StandardItem.new(v[:expense_date].to_s)
  	  it2.setEditable(false)
  	  m.setItem(i,1,it2)
  	
  	  it3 = Qt::StandardItem.new(v[:vehicle][:number])
  	  it3.setEditable(false)
  	  m.setItem(i,2,it3)
  	
  	  it4 = Qt::StandardItem.new(v[:expenses][:name])
  	  it4.setEditable(false)
  	  m.setItem(i,3,it4)
  	
  	  it5 = Qt::StandardItem.new(v[:amount])
  	  it5.setEditable(false)
  	  m.setItem(i,4,it5)
  	
  	  it6 = Qt::StandardItem.new(v[:remarks])
  	  it6.setEditable(false)
  	  m.setItem(i,5,it6)
    
 		
	  i = i + 1
	}
	 
	@ui.table.setModel(m)
  end

end
