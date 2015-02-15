=begin
** Form generated from reading ui file 'view_tours.ui'
**
** Created: Sun Dec 8 23:31:43 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewTourFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewTourFrame)
    if viewTourFrame.objectName.nil?
        viewTourFrame.objectName = "viewTourFrame"
    end
    viewTourFrame.resize(400, 300)
    viewTourFrame.frameShape = Qt::Frame::StyledPanel
    viewTourFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewTourFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewTourFrame)
    @table.objectName = "table"

    @verticalLayout.addWidget(@table)


    retranslateUi(viewTourFrame)

    Qt::MetaObject.connectSlotsByName(viewTourFrame)
    end # setupUi

    def setup_ui(viewTourFrame)
        setupUi(viewTourFrame)
    end

    def retranslateUi(viewTourFrame)
    viewTourFrame.windowTitle = Qt::Application.translate("ViewTourFrame", "View Tours", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewTourFrame)
        retranslateUi(viewTourFrame)
    end

end

module Ui
    class ViewTourFrame < Ui_ViewTourFrame
    end
end  # module Ui

