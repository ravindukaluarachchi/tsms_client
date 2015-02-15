=begin
** Form generated from reading ui file 'view_vehicles.ui'
**
** Created: Mon Dec 16 01:03:40 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_ViewVehicleFrame
    attr_reader :verticalLayout
    attr_reader :table

    def setupUi(viewVehicleFrame)
    if viewVehicleFrame.objectName.nil?
        viewVehicleFrame.objectName = "viewVehicleFrame"
    end
    viewVehicleFrame.resize(563, 472)
    viewVehicleFrame.frameShape = Qt::Frame::StyledPanel
    viewVehicleFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(viewVehicleFrame)
    @verticalLayout.objectName = "verticalLayout"
    @table = Qt::TableView.new(viewVehicleFrame)
    @table.objectName = "table"
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout.addWidget(@table)


    retranslateUi(viewVehicleFrame)

    Qt::MetaObject.connectSlotsByName(viewVehicleFrame)
    end # setupUi

    def setup_ui(viewVehicleFrame)
        setupUi(viewVehicleFrame)
    end

    def retranslateUi(viewVehicleFrame)
    viewVehicleFrame.windowTitle = Qt::Application.translate("ViewVehicleFrame", "View Vehicles", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(viewVehicleFrame)
        retranslateUi(viewVehicleFrame)
    end

end

module Ui
    class ViewVehicleFrame < Ui_ViewVehicleFrame
    end
end  # module Ui

