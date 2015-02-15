=begin
** Form generated from reading ui file 'view_location.ui'
**
** Created: Sun Dec 8 23:30:56 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewLocationFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewLocationFrame)
    if viewLocationFrame.objectName.nil?
        viewLocationFrame.objectName = "viewLocationFrame"
    end
    viewLocationFrame.resize(400, 300)
    viewLocationFrame.frameShape = Qt::Frame::StyledPanel
    viewLocationFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewLocationFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewLocationFrame)
    @table.objectName = "table"
    @table.selectionMode = Qt::AbstractItemView::SingleSelection
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewLocationFrame)

    Qt::MetaObject.connectSlotsByName(viewLocationFrame)
    end # setupUi

    def setup_ui(viewLocationFrame)
        setupUi(viewLocationFrame)
    end

    def retranslateUi(viewLocationFrame)
    viewLocationFrame.windowTitle = Qt::Application.translate("ViewLocationFrame", "View Locations", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewLocationFrame)
        retranslateUi(viewLocationFrame)
    end

end

module Ui
    class ViewLocationFrame < Ui_ViewLocationFrame
    end
end  # module Ui

