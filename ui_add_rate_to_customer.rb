=begin
** Form generated from reading ui file 'add_rate_to_customer.ui'
**
** Created: Sat Feb 15 16:53:17 2014
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_AddCustomerRateFrame
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :label
    attr_reader :label_2
    attr_reader :cmb_location
    attr_reader :spn_rate
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_add
    attr_reader :btn_cancel

    def setupUi(addCustomerRateFrame)
    if addCustomerRateFrame.objectName.nil?
        addCustomerRateFrame.objectName = "addCustomerRateFrame"
    end
    addCustomerRateFrame.resize(452, 129)
    addCustomerRateFrame.frameShape = Qt::Frame::StyledPanel
    addCustomerRateFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(addCustomerRateFrame)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @label = Qt::Label.new(addCustomerRateFrame)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 0, 0, 1, 1)

    @label_2 = Qt::Label.new(addCustomerRateFrame)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 1, 0, 1, 1)

    @cmb_location = Qt::ComboBox.new(addCustomerRateFrame)
    @cmb_location.objectName = "cmb_location"

    @gridLayout.addWidget(@cmb_location, 0, 1, 1, 1)

    @spn_rate = Qt::SpinBox.new(addCustomerRateFrame)
    @spn_rate.objectName = "spn_rate"
    @spn_rate.minimum = 0
    @spn_rate.maximum = 10000

    @gridLayout.addWidget(@spn_rate, 1, 1, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_add = Qt::PushButton.new(addCustomerRateFrame)
    @btn_add.objectName = "btn_add"

    @horizontalLayout.addWidget(@btn_add)

    @btn_cancel = Qt::PushButton.new(addCustomerRateFrame)
    @btn_cancel.objectName = "btn_cancel"

    @horizontalLayout.addWidget(@btn_cancel)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(addCustomerRateFrame)
    Qt::Object.connect(@btn_cancel, SIGNAL('clicked()'), addCustomerRateFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(addCustomerRateFrame)
    end # setupUi

    def setup_ui(addCustomerRateFrame)
        setupUi(addCustomerRateFrame)
    end

    def retranslateUi(addCustomerRateFrame)
    addCustomerRateFrame.windowTitle = Qt::Application.translate("AddCustomerRateFrame", "Add Rate To Customer", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("AddCustomerRateFrame", "Location", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("AddCustomerRateFrame", "Rate", nil, Qt::Application::UnicodeUTF8)
    @btn_add.text = Qt::Application.translate("AddCustomerRateFrame", "Add", nil, Qt::Application::UnicodeUTF8)
    @btn_cancel.text = Qt::Application.translate("AddCustomerRateFrame", "Cancel", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(addCustomerRateFrame)
        retranslateUi(addCustomerRateFrame)
    end

end

module Ui
    class AddCustomerRateFrame < Ui_AddCustomerRateFrame
    end
end  # module Ui

