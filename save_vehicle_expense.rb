require './ui_save_vehicle_expense.rb'
require './wscon'

class SaveVehicleExpense < Qt::Frame

  def initialize(ve = nil ,prevForm = nil,parent = nil)
    super parent
    @prevForm = prevForm
    @ui = Ui::SaveVehicleExpenseFrame.new
    @ui.setup_ui self
    @ui.btn_save.connect(SIGNAL :clicked){save_ve}

    @client = WsCon::client
    
    rsv = @client.call(:find_vehicle_entites)
    rsv = rsv.to_hash[:find_vehicle_entites_response][:return]
    @vehicles = rsv[:vehicles]
    @vehicles.each{|vehicle|  @ui.cmb_vehicle.addItem(vehicle[:number])}

    rse = @client.call(:find_expense_entites)
    rse = rse.to_hash[:find_expense_entites_response][:return]
    @expenses = rse[:expenses]
    @expenses.each{|expense|  @ui.cmb_expense.addItem(expense[:name])}

    fill_data ve if ve != nil
  end

  def save_ve

    vehicle = @vehicles[@ui.cmb_vehicle.currentIndex]
    expense = @expenses[@ui.cmb_expense.currentIndex]
    dt = @ui.dt_date.date
    expense_date = Date.new(dt.year,dt.month,dt.day) 
    amount = @ui.spn_amount.value
    remarks = @ui.pt_remarks.plainText
    
    
    begin    
    	if @id == nil then    
    	  @client.call(:create_vehicle_expense,message:{arg0: {vehicle: vehicle,expenses: expense,expense_date: expense_date,amount: amount,remarks: remarks}})
    	else
    	  @client.call(:edit_vehicle_expense,message:{arg0: {id: @id,vehicle: vehicle,expenses: expense,expense_date: expense_date,amount: amount,remarks: remarks}})
    	end
    	Qt::MessageBox.information self,'Information','Success Saved Vehicle Expense!'
    	@prevForm.load_data if @prevForm != nil
    	self.close
    rescue => e
    	puts e
    	Qt::MessageBox.information self,'Error','Saving Vehicle Expense Failed!'
    end

  end

  def fill_data ve
  	@id = ve[:id]

  	i = 0
  	@vehicles.each{|v| 
  	  break if ve[:vehicle][:id] == v[:id]
  	  i = i +1
  	}
  	@ui.cmb_vehicle.currentIndex = i 

  	i = 0
  	@expenses.each{|e|
      break if ve[:expenses][:id] == e[:id]
      i = i + 1
  	}
    @ui.cmb_expense.currentIndex = i
    #@ui.dt_date.date = ve[:expense_date]
    
    @ui.spn_amount.value = ve[:amount]
    @ui.pt_remarks.plainText = ve[:remarks]

  end
end
