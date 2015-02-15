=begin
** Form generated from reading ui file 'view_suppliers.ui'
**
** Created: Sat Dec 14 19:13:38 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewSupplierFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewSupplierFrame)
    if viewSupplierFrame.objectName.nil?
        viewSupplierFrame.objectName = "viewSupplierFrame"
    end
    viewSupplierFrame.resize(400, 300)
    viewSupplierFrame.frameShape = Qt::Frame::StyledPanel
    viewSupplierFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewSupplierFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewSupplierFrame)
    @table.objectName = "table"
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewSupplierFrame)

    Qt::MetaObject.connectSlotsByName(viewSupplierFrame)
    end # setupUi

    def setup_ui(viewSupplierFrame)
        setupUi(viewSupplierFrame)
    end

    def retranslateUi(viewSupplierFrame)
    viewSupplierFrame.windowTitle = Qt::Application.translate("ViewSupplierFrame", "View Suppliers", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewSupplierFrame)
        retranslateUi(viewSupplierFrame)
    end

end

module Ui
    class ViewSupplierFrame < Ui_ViewSupplierFrame
    end
end  # module Ui

