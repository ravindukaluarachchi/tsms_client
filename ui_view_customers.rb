=begin
** Form generated from reading ui file 'view_customers.ui'
**
** Created: Sun Dec 15 15:08:20 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewCustomers
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewCustomers)
    if viewCustomers.objectName.nil?
        viewCustomers.objectName = "viewCustomers"
    end
    viewCustomers.resize(400, 300)
    viewCustomers.frameShape = Qt::Frame::StyledPanel
    viewCustomers.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewCustomers)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewCustomers)
    @table.objectName = "table"
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewCustomers)

    Qt::MetaObject.connectSlotsByName(viewCustomers)
    end # setupUi

    def setup_ui(viewCustomers)
        setupUi(viewCustomers)
    end

    def retranslateUi(viewCustomers)
    viewCustomers.windowTitle = Qt::Application.translate("ViewCustomers", "View Customers", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewCustomers)
        retranslateUi(viewCustomers)
    end

end

module Ui
    class ViewCustomers < Ui_ViewCustomers
    end
end  # module Ui

