=begin
** Form generated from reading ui file 'save_vehicle_expense.ui'
**
** Created: Thu Feb 20 00:47:58 2014
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SaveVehicleExpenseFrame
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :label
    attr_reader :label_2
    attr_reader :label_3
    attr_reader :label_4
    attr_reader :spn_amount
    attr_reader :cmb_vehicle
    attr_reader :cmb_expense
    attr_reader :dt_date
    attr_reader :pt_remarks
    attr_reader :label_5
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_close

    def setupUi(saveVehicleExpenseFrame)
    if saveVehicleExpenseFrame.objectName.nil?
        saveVehicleExpenseFrame.objectName = "saveVehicleExpenseFrame"
    end
    saveVehicleExpenseFrame.resize(471, 284)
    saveVehicleExpenseFrame.frameShape = Qt::Frame::StyledPanel
    saveVehicleExpenseFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(saveVehicleExpenseFrame)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @label = Qt::Label.new(saveVehicleExpenseFrame)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 1, 0, 1, 1)

    @label_2 = Qt::Label.new(saveVehicleExpenseFrame)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 2, 0, 1, 1)

    @label_3 = Qt::Label.new(saveVehicleExpenseFrame)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 3, 0, 1, 1)

    @label_4 = Qt::Label.new(saveVehicleExpenseFrame)
    @label_4.objectName = "label_4"

    @gridLayout.addWidget(@label_4, 4, 0, 1, 1)

    @spn_amount = Qt::DoubleSpinBox.new(saveVehicleExpenseFrame)
    @spn_amount.objectName = "spn_amount"
    @spn_amount.maximum = 100000

    @gridLayout.addWidget(@spn_amount, 3, 1, 1, 1)

    @cmb_vehicle = Qt::ComboBox.new(saveVehicleExpenseFrame)
    @cmb_vehicle.objectName = "cmb_vehicle"
    @cmb_vehicle.enabled = true
    @cmb_vehicle.editable = false

    @gridLayout.addWidget(@cmb_vehicle, 1, 1, 1, 1)

    @cmb_expense = Qt::ComboBox.new(saveVehicleExpenseFrame)
    @cmb_expense.objectName = "cmb_expense"
    @cmb_expense.enabled = true

    @gridLayout.addWidget(@cmb_expense, 2, 1, 1, 1)

    @dt_date = Qt::DateEdit.new(saveVehicleExpenseFrame)
    @dt_date.objectName = "dt_date"
    @dt_date.calendarPopup = true

    @gridLayout.addWidget(@dt_date, 4, 1, 1, 1)

    @pt_remarks = Qt::PlainTextEdit.new(saveVehicleExpenseFrame)
    @pt_remarks.objectName = "pt_remarks"

    @gridLayout.addWidget(@pt_remarks, 5, 1, 1, 1)

    @label_5 = Qt::Label.new(saveVehicleExpenseFrame)
    @label_5.objectName = "label_5"

    @gridLayout.addWidget(@label_5, 5, 0, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(saveVehicleExpenseFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_close = Qt::PushButton.new(saveVehicleExpenseFrame)
    @btn_close.objectName = "btn_close"

    @horizontalLayout.addWidget(@btn_close)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(saveVehicleExpenseFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), saveVehicleExpenseFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(saveVehicleExpenseFrame)
    end # setupUi

    def setup_ui(saveVehicleExpenseFrame)
        setupUi(saveVehicleExpenseFrame)
    end

    def retranslateUi(saveVehicleExpenseFrame)
    saveVehicleExpenseFrame.windowTitle = Qt::Application.translate("SaveVehicleExpenseFrame", "Add Expense To Vehicle", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Vehicle", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Expense", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Amount", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Date", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Remarks      ", nil, Qt::Application::UnicodeUTF8)
    @btn_save.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("SaveVehicleExpenseFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(saveVehicleExpenseFrame)
        retranslateUi(saveVehicleExpenseFrame)
    end

end

module Ui
    class SaveVehicleExpenseFrame < Ui_SaveVehicleExpenseFrame
    end
end  # module Ui

