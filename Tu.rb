require 'Qt4'
require './tu_main1'
require './Tu1'
require './Sub1'
require './save_driver'
require './view_drivers'
require './save_tour'
require './view_tours'
require './save_location'
require './view_locations'
require './save_vehicle'
require './view_vehicles'
require './save_expense'
require './view_expenses'
require './save_supplier'
require './view_suppliers'
require './save_customer'
require './view_customers'
require './save_vehicle_expense'
require './view_vehicle_expenses'

class Tu < Qt::MainWindow
  def initialize(parent = nil)
    super(parent);
	  @ui = Ui::MainWindow.new
	  @ui.setup_ui(self)

    @ui.actionTour_Requests.connect(SIGNAL :triggered) {view_tours_to_confirm }
    @ui.actionAdd_Tour.connect(SIGNAL :triggered) { add_tour }
    @ui.actionView_Tours.connect(SIGNAL :triggered) { view_pending_tours }
    @ui.actionView_Confirmed_Tours.connect(SIGNAL :triggered) { view_confirmed_tours }

    @ui.actionAdd_New_Driver.connect(SIGNAL :triggered){view_new_driver}
    @ui.actionView_Drivers.connect(SIGNAL :triggered){view_drivers}
    
    
    @ui.actionAdd_New_Location.connect(SIGNAL :triggered) { add_location } 
    @ui.actionView_Locations.connect(SIGNAL :triggered) { view_locations }

    @ui.actionAdd_Vehicle.connect(SIGNAL :triggered){add_vehicle}
    @ui.actionView_Vehicles.connect(SIGNAL :triggered){view_vehicles}

    @ui.actionAdd_Customer.connect(SIGNAL :triggered){add_customer}
    @ui.actionView_Customers.connect(SIGNAL :triggered){view_customers}

    @ui.actionAdd_Supplier.connect(SIGNAL :triggered){add_supplier}
    @ui.actionView_Supplier.connect(SIGNAL :triggered){view_suppliers}

    @ui.actionAdd_Expense_Type.connect(SIGNAL :triggered){add_expense_type}
    @ui.actionView_Expense_Type.connect(SIGNAL :triggered){view_expense_types}


    @ui.actionAdd_Expense.connect(SIGNAL :triggered){add_expense}
    @ui.actionView_Expenses.connect(SIGNAL :triggered){view_expenses}
    
  end

  def add_tour
    s = SaveTour.new
    s.show
  end

  def view_pending_tours
    s = ViewTours.new 0
    add_window s
  end

  def view_confirmed_tours
    s = ViewTours.new 1
    add_window s
  end

  def view_tours_to_confirm    
    s = Sub1.new     
    add_window s
  end

  def view_new_driver
    SaveDriver.new.show 
  end

  def view_drivers
    s = ViewDrivers.new
    add_window s
  end

  def add_location
    SaveLocation.new.show
  end

  def view_locations
    add_window ViewLocations.new
  end

  def add_vehicle
    SaveVehicle.new.show
  end

  def view_vehicles
    add_window ViewVehicles.new
  end

  def add_window(s)
    @ui.marea.addSubWindow(s)
    s.show
    s.showMaximized
    s.activateWindow    
  end

  def add_expense_type
    SaveExpense.new.show
  end

  def view_expense_types
    add_window ViewExpenses.new
  end

def add_expense
    SaveVehicleExpense.new.show
  end

  def view_expenses
    add_window ViewVehicleExpenses.new
  end

  def add_supplier
    SaveSupplier.new.show
  end

  def view_suppliers
    add_window ViewSuppliers.new
  end

  def add_customer
    s = SaveCustomer.new
    s.ui.tab_2.enabled = false
    s.show
  end

  def view_customers
    add_window ViewCustomers.new
  end

end
