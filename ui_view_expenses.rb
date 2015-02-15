=begin
** Form generated from reading ui file 'view_expenses.ui'
**
** Created: Sun Dec 15 20:53:56 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewExpensesFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewExpensesFrame)
    if viewExpensesFrame.objectName.nil?
        viewExpensesFrame.objectName = "viewExpensesFrame"
    end
    viewExpensesFrame.resize(400, 300)
    viewExpensesFrame.frameShape = Qt::Frame::StyledPanel
    viewExpensesFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewExpensesFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewExpensesFrame)
    @table.objectName = "table"
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewExpensesFrame)

    Qt::MetaObject.connectSlotsByName(viewExpensesFrame)
    end # setupUi

    def setup_ui(viewExpensesFrame)
        setupUi(viewExpensesFrame)
    end

    def retranslateUi(viewExpensesFrame)
    viewExpensesFrame.windowTitle = Qt::Application.translate("ViewExpensesFrame", "View Expsense Types", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewExpensesFrame)
        retranslateUi(viewExpensesFrame)
    end

end

module Ui
    class ViewExpensesFrame < Ui_ViewExpensesFrame
    end
end  # module Ui

