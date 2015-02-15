=begin
** Form generated from reading ui file 'view_vehicle_expenses.ui'
**
** Created: Mon Dec 16 12:56:34 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewVehicleExpensesFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewVehicleExpensesFrame)
    if viewVehicleExpensesFrame.objectName.nil?
        viewVehicleExpensesFrame.objectName = "viewVehicleExpensesFrame"
    end
    viewVehicleExpensesFrame.resize(400, 300)
    viewVehicleExpensesFrame.frameShape = Qt::Frame::StyledPanel
    viewVehicleExpensesFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewVehicleExpensesFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewVehicleExpensesFrame)
    @table.objectName = "table"
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewVehicleExpensesFrame)

    Qt::MetaObject.connectSlotsByName(viewVehicleExpensesFrame)
    end # setupUi

    def setup_ui(viewVehicleExpensesFrame)
        setupUi(viewVehicleExpensesFrame)
    end

    def retranslateUi(viewVehicleExpensesFrame)
    viewVehicleExpensesFrame.windowTitle = Qt::Application.translate("ViewVehicleExpensesFrame", "View Vehicle Expenses", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewVehicleExpensesFrame)
        retranslateUi(viewVehicleExpensesFrame)
    end

end

module Ui
    class ViewVehicleExpensesFrame < Ui_ViewVehicleExpensesFrame
    end
end  # module Ui

