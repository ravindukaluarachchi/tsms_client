require './ui_view_expenses'
require './wscon'

class ViewExpenses < Qt::Frame
  
  slots 'row_double_click(QModelIndex)'

  def initialize(parent=nil)
  	super parent
   	@ui = Ui::ViewExpensesFrame.new
  	@ui.setup_ui self
    load_data
    Qt::Object.connect(@ui.table, SIGNAL('doubleClicked(QModelIndex)'), self, SLOT('row_double_click(QModelIndex)'))
    
  end

  def row_double_click(v)   
    SaveExpense.new(@expenses[v.row],self).show
  end

  def load_data	  
	  m = Qt::StandardItemModel.new(0,1)
	  m.setHorizontalHeaderItem(0,Qt::StandardItem.new("Id"))
	  m.setHorizontalHeaderItem(1,Qt::StandardItem.new("Name"))	
	  m.setHorizontalHeaderItem(2,Qt::StandardItem.new("Description"))
	  m.setHorizontalHeaderItem(3,Qt::StandardItem.new("Amount"))	  
	   
    client = WsCon::client
    response = client.call(:find_expense_entites)
    r = response.to_hash[:find_expense_entites_response][:return]
    @expenses = r[:expenses]

    atrs = [:id,:name,:description,:amount]
    i = 0
    @expenses.each{ |expense|
      j = 0
      atrs.each{ |s|  
        it = Qt::StandardItem.new(expense[s])
        it.setEditable(false)
        m.setItem(i,j,it)
        j = j + 1
      }
    
      i = i + 1
    }

	  @ui.table.setModel(m)
  end
end