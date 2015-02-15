=begin
** Form generated from reading ui file 'view_drivers.ui'
**
** Created: Sun Dec 15 17:43:07 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewDriversFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewDriversFrame)
    if viewDriversFrame.objectName.nil?
        viewDriversFrame.objectName = "viewDriversFrame"
    end
    viewDriversFrame.resize(580, 410)
    viewDriversFrame.frameShape = Qt::Frame::StyledPanel
    viewDriversFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewDriversFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewDriversFrame)
    @table.objectName = "table"
    @table.selectionMode = Qt::AbstractItemView::SingleSelection
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewDriversFrame)

    Qt::MetaObject.connectSlotsByName(viewDriversFrame)
    end # setupUi

    def setup_ui(viewDriversFrame)
        setupUi(viewDriversFrame)
    end

    def retranslateUi(viewDriversFrame)
    viewDriversFrame.windowTitle = Qt::Application.translate("ViewDriversFrame", "View Drivers", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewDriversFrame)
        retranslateUi(viewDriversFrame)
    end

end

module Ui
    class ViewDriversFrame < Ui_ViewDriversFrame
    end
end  # module Ui

