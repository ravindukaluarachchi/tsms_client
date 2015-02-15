=begin
** Form generated from reading ui file 'save_vehicle.ui'
**
** Created: Mon Dec 16 00:44:37 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_AddVehicleFrame
    attr_reader :verticalLayout
    attr_reader :formLayout
    attr_reader :label
    attr_reader :label_2
    attr_reader :label_3
    attr_reader :label_4
    attr_reader :label_5
    attr_reader :label_6
    attr_reader :label_7
    attr_reader :txt_vehicle_no
    attr_reader :txt_model
    attr_reader :txt_color
    attr_reader :spn_seats
    attr_reader :dt_insurance
    attr_reader :dt_licence
    attr_reader :cmb_supplier
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_close

    def setupUi(addVehicleFrame)
    if addVehicleFrame.objectName.nil?
        addVehicleFrame.objectName = "addVehicleFrame"
    end
    addVehicleFrame.resize(591, 319)
    addVehicleFrame.frameShape = Qt::Frame::StyledPanel
    addVehicleFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(addVehicleFrame)
    @verticalLayout.objectName = "verticalLayout"
    @formLayout = Qt::FormLayout.new()
    @formLayout.objectName = "formLayout"
    @label = Qt::Label.new(addVehicleFrame)
    @label.objectName = "label"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @label)

    @label_2 = Qt::Label.new(addVehicleFrame)
    @label_2.objectName = "label_2"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @label_2)

    @label_3 = Qt::Label.new(addVehicleFrame)
    @label_3.objectName = "label_3"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @label_3)

    @label_4 = Qt::Label.new(addVehicleFrame)
    @label_4.objectName = "label_4"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @label_4)

    @label_5 = Qt::Label.new(addVehicleFrame)
    @label_5.objectName = "label_5"

    @formLayout.setWidget(4, Qt::FormLayout::LabelRole, @label_5)

    @label_6 = Qt::Label.new(addVehicleFrame)
    @label_6.objectName = "label_6"

    @formLayout.setWidget(5, Qt::FormLayout::LabelRole, @label_6)

    @label_7 = Qt::Label.new(addVehicleFrame)
    @label_7.objectName = "label_7"

    @formLayout.setWidget(6, Qt::FormLayout::LabelRole, @label_7)

    @txt_vehicle_no = Qt::LineEdit.new(addVehicleFrame)
    @txt_vehicle_no.objectName = "txt_vehicle_no"

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @txt_vehicle_no)

    @txt_model = Qt::LineEdit.new(addVehicleFrame)
    @txt_model.objectName = "txt_model"

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @txt_model)

    @txt_color = Qt::LineEdit.new(addVehicleFrame)
    @txt_color.objectName = "txt_color"

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @txt_color)

    @spn_seats = Qt::SpinBox.new(addVehicleFrame)
    @spn_seats.objectName = "spn_seats"

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @spn_seats)

    @dt_insurance = Qt::DateEdit.new(addVehicleFrame)
    @dt_insurance.objectName = "dt_insurance"
    @dt_insurance.calendarPopup = true

    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @dt_insurance)

    @dt_licence = Qt::DateEdit.new(addVehicleFrame)
    @dt_licence.objectName = "dt_licence"
    @dt_licence.calendarPopup = true

    @formLayout.setWidget(5, Qt::FormLayout::FieldRole, @dt_licence)

    @cmb_supplier = Qt::ComboBox.new(addVehicleFrame)
    @cmb_supplier.objectName = "cmb_supplier"

    @formLayout.setWidget(6, Qt::FormLayout::FieldRole, @cmb_supplier)


    @verticalLayout.addLayout(@formLayout)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(addVehicleFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_close = Qt::PushButton.new(addVehicleFrame)
    @btn_close.objectName = "btn_close"

    @horizontalLayout.addWidget(@btn_close)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(addVehicleFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), addVehicleFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(addVehicleFrame)
    end # setupUi

    def setup_ui(addVehicleFrame)
        setupUi(addVehicleFrame)
    end

    def retranslateUi(addVehicleFrame)
    addVehicleFrame.windowTitle = Qt::Application.translate("AddVehicleFrame", "Save Vehicle", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("AddVehicleFrame", "Vehicle Number", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("AddVehicleFrame", "Model", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("AddVehicleFrame", "Colour", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("AddVehicleFrame", "Seat Capacity", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("AddVehicleFrame", "Insurance Expiery Date", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("AddVehicleFrame", "Licence Expiery Date", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("AddVehicleFrame", "Supplier", nil, Qt::Application::UnicodeUTF8)
    @btn_save.text = Qt::Application.translate("AddVehicleFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("AddVehicleFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(addVehicleFrame)
        retranslateUi(addVehicleFrame)
    end

end

module Ui
    class AddVehicleFrame < Ui_AddVehicleFrame
    end
end  # module Ui

