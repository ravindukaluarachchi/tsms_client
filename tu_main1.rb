=begin
** Form generated from reading ui file 'main1.ui'
**
** Created: Wed Feb 19 23:39:34 2014
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :actionExit
    attr_reader :actionTour_Requests
    attr_reader :actionAdd_Tour
    attr_reader :actionView_Tours
    attr_reader :actionView_Confirmed_Tours
    attr_reader :actionView_Drivers
    attr_reader :actionAdd_New_Driver
    attr_reader :actionAdd_New_Location
    attr_reader :actionView_Locations
    attr_reader :actionAdd_Vehicle
    attr_reader :actionView_Vehicles
    attr_reader :actionMonthly_Income_Report
    attr_reader :actionVehicle_Expense_Report
    attr_reader :actionAdd_Customer
    attr_reader :actionView_Customers
    attr_reader :actionAdd_Supplier
    attr_reader :actionView_Supplier
    attr_reader :actionAdd_Expense_Type
    attr_reader :actionView_Expense_Type
    attr_reader :actionAdd_Rate_Type
    attr_reader :actionView_Rate_Tyoes
    attr_reader :actionAdd_Expense
    attr_reader :actionView_Expenses
    attr_reader :centralwidget
    attr_reader :verticalLayout
    attr_reader :marea
    attr_reader :statusbar
    attr_reader :menubar
    attr_reader :menuFile
    attr_reader :menuActions
    attr_reader :menuDriver
    attr_reader :menuTours_2
    attr_reader :menuLocation
    attr_reader :menuVehicle
    attr_reader :menuCustomers
    attr_reader :menuSuppliers
    attr_reader :menuExpense_Types

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(985, 669)
    @actionExit = Qt::Action.new(mainWindow)
    @actionExit.objectName = "actionExit"
    @actionTour_Requests = Qt::Action.new(mainWindow)
    @actionTour_Requests.objectName = "actionTour_Requests"
    @actionAdd_Tour = Qt::Action.new(mainWindow)
    @actionAdd_Tour.objectName = "actionAdd_Tour"
    @actionView_Tours = Qt::Action.new(mainWindow)
    @actionView_Tours.objectName = "actionView_Tours"
    @actionView_Confirmed_Tours = Qt::Action.new(mainWindow)
    @actionView_Confirmed_Tours.objectName = "actionView_Confirmed_Tours"
    @actionView_Drivers = Qt::Action.new(mainWindow)
    @actionView_Drivers.objectName = "actionView_Drivers"
    @actionAdd_New_Driver = Qt::Action.new(mainWindow)
    @actionAdd_New_Driver.objectName = "actionAdd_New_Driver"
    @actionAdd_New_Location = Qt::Action.new(mainWindow)
    @actionAdd_New_Location.objectName = "actionAdd_New_Location"
    @actionView_Locations = Qt::Action.new(mainWindow)
    @actionView_Locations.objectName = "actionView_Locations"
    @actionAdd_Vehicle = Qt::Action.new(mainWindow)
    @actionAdd_Vehicle.objectName = "actionAdd_Vehicle"
    @actionView_Vehicles = Qt::Action.new(mainWindow)
    @actionView_Vehicles.objectName = "actionView_Vehicles"
    @actionMonthly_Income_Report = Qt::Action.new(mainWindow)
    @actionMonthly_Income_Report.objectName = "actionMonthly_Income_Report"
    @actionVehicle_Expense_Report = Qt::Action.new(mainWindow)
    @actionVehicle_Expense_Report.objectName = "actionVehicle_Expense_Report"
    @actionAdd_Customer = Qt::Action.new(mainWindow)
    @actionAdd_Customer.objectName = "actionAdd_Customer"
    @actionView_Customers = Qt::Action.new(mainWindow)
    @actionView_Customers.objectName = "actionView_Customers"
    @actionAdd_Supplier = Qt::Action.new(mainWindow)
    @actionAdd_Supplier.objectName = "actionAdd_Supplier"
    @actionView_Supplier = Qt::Action.new(mainWindow)
    @actionView_Supplier.objectName = "actionView_Supplier"
    @actionAdd_Expense_Type = Qt::Action.new(mainWindow)
    @actionAdd_Expense_Type.objectName = "actionAdd_Expense_Type"
    @actionView_Expense_Type = Qt::Action.new(mainWindow)
    @actionView_Expense_Type.objectName = "actionView_Expense_Type"
    @actionAdd_Rate_Type = Qt::Action.new(mainWindow)
    @actionAdd_Rate_Type.objectName = "actionAdd_Rate_Type"
    @actionView_Rate_Tyoes = Qt::Action.new(mainWindow)
    @actionView_Rate_Tyoes.objectName = "actionView_Rate_Tyoes"
    @actionAdd_Expense = Qt::Action.new(mainWindow)
    @actionAdd_Expense.objectName = "actionAdd_Expense"
    @actionView_Expenses = Qt::Action.new(mainWindow)
    @actionView_Expenses.objectName = "actionView_Expenses"
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @verticalLayout = Qt::VBoxLayout.new(@centralwidget)
    @verticalLayout.spacing = 6
    @verticalLayout.objectName = "verticalLayout"
    @verticalLayout.setContentsMargins(3, 3, 3, 0)
    @marea = Qt::MdiArea.new(@centralwidget)
    @marea.objectName = "marea"

    @verticalLayout.addWidget(@marea)

    mainWindow.centralWidget = @centralwidget
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar
    @menubar = Qt::MenuBar.new(mainWindow)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 985, 27)
    @menuFile = Qt::Menu.new(@menubar)
    @menuFile.objectName = "menuFile"
    @menuActions = Qt::Menu.new(@menubar)
    @menuActions.objectName = "menuActions"
    @menuDriver = Qt::Menu.new(@menuActions)
    @menuDriver.objectName = "menuDriver"
    @menuTours_2 = Qt::Menu.new(@menuActions)
    @menuTours_2.objectName = "menuTours_2"
    @menuLocation = Qt::Menu.new(@menuActions)
    @menuLocation.objectName = "menuLocation"
    @menuVehicle = Qt::Menu.new(@menuActions)
    @menuVehicle.objectName = "menuVehicle"
    @menuCustomers = Qt::Menu.new(@menuActions)
    @menuCustomers.objectName = "menuCustomers"
    @menuSuppliers = Qt::Menu.new(@menuActions)
    @menuSuppliers.objectName = "menuSuppliers"
    @menuExpense_Types = Qt::Menu.new(@menuActions)
    @menuExpense_Types.objectName = "menuExpense_Types"
    mainWindow.setMenuBar(@menubar)

    @menubar.addAction(@menuFile.menuAction())
    @menubar.addAction(@menuActions.menuAction())
    @menuFile.addAction(@actionExit)
    @menuActions.addAction(@menuDriver.menuAction())
    @menuActions.addAction(@menuTours_2.menuAction())
    @menuActions.addAction(@menuVehicle.menuAction())
    @menuActions.addAction(@menuCustomers.menuAction())
    @menuActions.addAction(@menuSuppliers.menuAction())
    @menuActions.addSeparator()
    @menuActions.addAction(@menuLocation.menuAction())
    @menuActions.addAction(@menuExpense_Types.menuAction())
    @menuDriver.addAction(@actionAdd_New_Driver)
    @menuDriver.addSeparator()
    @menuDriver.addAction(@actionView_Drivers)
    @menuTours_2.addAction(@actionTour_Requests)
    @menuTours_2.addSeparator()
    @menuTours_2.addAction(@actionAdd_Tour)
    @menuTours_2.addAction(@actionView_Tours)
    @menuTours_2.addAction(@actionView_Confirmed_Tours)
    @menuLocation.addAction(@actionAdd_New_Location)
    @menuLocation.addAction(@actionView_Locations)
    @menuVehicle.addAction(@actionAdd_Vehicle)
    @menuVehicle.addAction(@actionView_Vehicles)
    @menuVehicle.addSeparator()
    @menuVehicle.addAction(@actionAdd_Expense)
    @menuVehicle.addAction(@actionView_Expenses)
    @menuCustomers.addAction(@actionAdd_Customer)
    @menuCustomers.addSeparator()
    @menuCustomers.addAction(@actionView_Customers)
    @menuSuppliers.addAction(@actionAdd_Supplier)
    @menuSuppliers.addSeparator()
    @menuSuppliers.addAction(@actionView_Supplier)
    @menuExpense_Types.addAction(@actionAdd_Expense_Type)
    @menuExpense_Types.addSeparator()
    @menuExpense_Types.addAction(@actionView_Expense_Type)

    retranslateUi(mainWindow)
    Qt::Object.connect(@actionExit, SIGNAL('triggered()'), mainWindow, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.windowTitle = Qt::Application.translate("MainWindow", "Tsms Client", nil, Qt::Application::UnicodeUTF8)
    @actionExit.text = Qt::Application.translate("MainWindow", "Exit", nil, Qt::Application::UnicodeUTF8)
    @actionTour_Requests.text = Qt::Application.translate("MainWindow", "Tour Requests", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Tour.text = Qt::Application.translate("MainWindow", "Add Tour", nil, Qt::Application::UnicodeUTF8)
    @actionView_Tours.text = Qt::Application.translate("MainWindow", "View Pending Tours", nil, Qt::Application::UnicodeUTF8)
    @actionView_Confirmed_Tours.text = Qt::Application.translate("MainWindow", "View Confirmed Tours", nil, Qt::Application::UnicodeUTF8)
    @actionView_Drivers.text = Qt::Application.translate("MainWindow", "View Drivers", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_New_Driver.text = Qt::Application.translate("MainWindow", "Add New Driver", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_New_Location.text = Qt::Application.translate("MainWindow", "Add New Location", nil, Qt::Application::UnicodeUTF8)
    @actionView_Locations.text = Qt::Application.translate("MainWindow", "View Locations", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Vehicle.text = Qt::Application.translate("MainWindow", "Add Vehicle", nil, Qt::Application::UnicodeUTF8)
    @actionView_Vehicles.text = Qt::Application.translate("MainWindow", "View Vehicles", nil, Qt::Application::UnicodeUTF8)
    @actionMonthly_Income_Report.text = Qt::Application.translate("MainWindow", "Monthly Income Report", nil, Qt::Application::UnicodeUTF8)
    @actionVehicle_Expense_Report.text = Qt::Application.translate("MainWindow", "Vehicle Expense Report", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Customer.text = Qt::Application.translate("MainWindow", "Add Customer", nil, Qt::Application::UnicodeUTF8)
    @actionView_Customers.text = Qt::Application.translate("MainWindow", "View Customers", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Supplier.text = Qt::Application.translate("MainWindow", "Add Supplier", nil, Qt::Application::UnicodeUTF8)
    @actionView_Supplier.text = Qt::Application.translate("MainWindow", "View Supplier", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Expense_Type.text = Qt::Application.translate("MainWindow", "Add Expense Type", nil, Qt::Application::UnicodeUTF8)
    @actionView_Expense_Type.text = Qt::Application.translate("MainWindow", "View Expense Type", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Rate_Type.text = Qt::Application.translate("MainWindow", "Add Rate Type", nil, Qt::Application::UnicodeUTF8)
    @actionView_Rate_Tyoes.text = Qt::Application.translate("MainWindow", "View Rate Types", nil, Qt::Application::UnicodeUTF8)
    @actionAdd_Expense.text = Qt::Application.translate("MainWindow", "Add Expense", nil, Qt::Application::UnicodeUTF8)
    @actionView_Expenses.text = Qt::Application.translate("MainWindow", "View Expenses", nil, Qt::Application::UnicodeUTF8)
    @menuFile.title = Qt::Application.translate("MainWindow", "File", nil, Qt::Application::UnicodeUTF8)
    @menuActions.title = Qt::Application.translate("MainWindow", "Actions", nil, Qt::Application::UnicodeUTF8)
    @menuDriver.title = Qt::Application.translate("MainWindow", "Driver", nil, Qt::Application::UnicodeUTF8)
    @menuTours_2.title = Qt::Application.translate("MainWindow", "Tours", nil, Qt::Application::UnicodeUTF8)
    @menuLocation.title = Qt::Application.translate("MainWindow", "Locations", nil, Qt::Application::UnicodeUTF8)
    @menuVehicle.title = Qt::Application.translate("MainWindow", "Vehicle", nil, Qt::Application::UnicodeUTF8)
    @menuCustomers.title = Qt::Application.translate("MainWindow", "Customers", nil, Qt::Application::UnicodeUTF8)
    @menuSuppliers.title = Qt::Application.translate("MainWindow", "Suppliers", nil, Qt::Application::UnicodeUTF8)
    @menuExpense_Types.title = Qt::Application.translate("MainWindow", "Expense Types", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

