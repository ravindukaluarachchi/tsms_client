require './ui_save_expense'
require './wscon'

class SaveExpense < Qt::Frame

  def initialize(expense = nil,prevFrame = nil,parent=nil)
    super parent
    @prevFrame = prevFrame
	@ui = Ui::SaveExpenseFrame.new
	@ui.setup_ui self
	@ui.btn_save.connect(SIGNAL :clicked){save_expense}

	fill_data expense if expense != nil
  end

  def save_expense
    name = @ui.txt_name.text
    description = @ui.txt_description.text
    amount = @ui.spn_amount.value
    begin
      client = WsCon::client
      if @id == nil then
      	client.call(:create_expense,message:{arg0:{name: name,description: description,amount: amount}})
      else
      	client.call(:edit_expense,message:{arg0:{id: @id,name: name,description: description,amount: amount}})
      end
      Qt::MessageBox.information self,"Information","Successfully Save Expense Type"
      @prevFrame.load_data if @prevFrame != nil
      self.close
    rescue
      Qt::MessageBox.information self,"Error","Failed to save Expense Type"
    end
  end

  def fill_data expense
    @id = expense[:id]
    @ui.txt_name.text = expense[:name]
    @ui.txt_description.text= expense[:description]
    @ui.spn_amount.value = expense[:amount]
  end

end
