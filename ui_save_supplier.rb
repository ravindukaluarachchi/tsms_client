=begin
** Form generated from reading ui file 'save_supplier.ui'
**
** Created: Sat Dec 14 19:13:13 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SaveSupplierFrame
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :label
    attr_reader :ptxt_remarks
    attr_reader :txt_accountno
    attr_reader :txt_name
    attr_reader :label_3
    attr_reader :label_2
    attr_reader :verticalSpacer
    attr_reader :line
    attr_reader :gridLayout_2
    attr_reader :label_6
    attr_reader :label_4
    attr_reader :label_10
    attr_reader :txt_city1
    attr_reader :txt_country1
    attr_reader :label_8
    attr_reader :label_5
    attr_reader :txt_telephone1
    attr_reader :ptxt_address1
    attr_reader :txt_mobile1
    attr_reader :txt_postal1
    attr_reader :label_7
    attr_reader :label_15
    attr_reader :label_9
    attr_reader :txt_mobile2
    attr_reader :txt_telephone2
    attr_reader :txt_postal2
    attr_reader :ptxt_address2
    attr_reader :label_14
    attr_reader :label_12
    attr_reader :label_13
    attr_reader :label_11
    attr_reader :txt_country2
    attr_reader :txt_city2
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_close

    def setupUi(saveSupplierFrame)
    if saveSupplierFrame.objectName.nil?
        saveSupplierFrame.objectName = "saveSupplierFrame"
    end
    saveSupplierFrame.resize(607, 507)
    saveSupplierFrame.frameShape = Qt::Frame::StyledPanel
    saveSupplierFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(saveSupplierFrame)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @label = Qt::Label.new(saveSupplierFrame)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 0, 0, 1, 1)

    @ptxt_remarks = Qt::PlainTextEdit.new(saveSupplierFrame)
    @ptxt_remarks.objectName = "ptxt_remarks"

    @gridLayout.addWidget(@ptxt_remarks, 2, 1, 1, 1)

    @txt_accountno = Qt::LineEdit.new(saveSupplierFrame)
    @txt_accountno.objectName = "txt_accountno"

    @gridLayout.addWidget(@txt_accountno, 1, 1, 1, 1)

    @txt_name = Qt::LineEdit.new(saveSupplierFrame)
    @txt_name.objectName = "txt_name"

    @gridLayout.addWidget(@txt_name, 0, 1, 1, 1)

    @label_3 = Qt::Label.new(saveSupplierFrame)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 2, 0, 1, 1)

    @label_2 = Qt::Label.new(saveSupplierFrame)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 1, 0, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @verticalLayout.addItem(@verticalSpacer)

    @line = Qt::Frame.new(saveSupplierFrame)
    @line.objectName = "line"
    @line.lineWidth = 1
    @line.setFrameShape(Qt::Frame::HLine)
    @line.setFrameShadow(Qt::Frame::Sunken)

    @verticalLayout.addWidget(@line)

    @gridLayout_2 = Qt::GridLayout.new()
    @gridLayout_2.objectName = "gridLayout_2"
    @label_6 = Qt::Label.new(saveSupplierFrame)
    @label_6.objectName = "label_6"

    @gridLayout_2.addWidget(@label_6, 2, 0, 1, 1)

    @label_4 = Qt::Label.new(saveSupplierFrame)
    @label_4.objectName = "label_4"

    @gridLayout_2.addWidget(@label_4, 1, 0, 1, 1)

    @label_10 = Qt::Label.new(saveSupplierFrame)
    @label_10.objectName = "label_10"

    @gridLayout_2.addWidget(@label_10, 4, 0, 1, 1)

    @txt_city1 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_city1.objectName = "txt_city1"

    @gridLayout_2.addWidget(@txt_city1, 4, 1, 1, 1)

    @txt_country1 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_country1.objectName = "txt_country1"

    @gridLayout_2.addWidget(@txt_country1, 5, 1, 1, 1)

    @label_8 = Qt::Label.new(saveSupplierFrame)
    @label_8.objectName = "label_8"

    @gridLayout_2.addWidget(@label_8, 3, 0, 1, 1)

    @label_5 = Qt::Label.new(saveSupplierFrame)
    @label_5.objectName = "label_5"

    @gridLayout_2.addWidget(@label_5, 0, 0, 1, 1)

    @txt_telephone1 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_telephone1.objectName = "txt_telephone1"

    @gridLayout_2.addWidget(@txt_telephone1, 1, 1, 1, 1)

    @ptxt_address1 = Qt::PlainTextEdit.new(saveSupplierFrame)
    @ptxt_address1.objectName = "ptxt_address1"

    @gridLayout_2.addWidget(@ptxt_address1, 3, 1, 1, 1)

    @txt_mobile1 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_mobile1.objectName = "txt_mobile1"

    @gridLayout_2.addWidget(@txt_mobile1, 0, 1, 1, 1)

    @txt_postal1 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_postal1.objectName = "txt_postal1"

    @gridLayout_2.addWidget(@txt_postal1, 2, 1, 1, 1)

    @label_7 = Qt::Label.new(saveSupplierFrame)
    @label_7.objectName = "label_7"

    @gridLayout_2.addWidget(@label_7, 1, 2, 1, 1)

    @label_15 = Qt::Label.new(saveSupplierFrame)
    @label_15.objectName = "label_15"

    @gridLayout_2.addWidget(@label_15, 0, 2, 1, 1)

    @label_9 = Qt::Label.new(saveSupplierFrame)
    @label_9.objectName = "label_9"

    @gridLayout_2.addWidget(@label_9, 5, 0, 1, 1)

    @txt_mobile2 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_mobile2.objectName = "txt_mobile2"

    @gridLayout_2.addWidget(@txt_mobile2, 0, 3, 1, 1)

    @txt_telephone2 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_telephone2.objectName = "txt_telephone2"

    @gridLayout_2.addWidget(@txt_telephone2, 1, 3, 1, 1)

    @txt_postal2 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_postal2.objectName = "txt_postal2"

    @gridLayout_2.addWidget(@txt_postal2, 2, 3, 1, 1)

    @ptxt_address2 = Qt::PlainTextEdit.new(saveSupplierFrame)
    @ptxt_address2.objectName = "ptxt_address2"

    @gridLayout_2.addWidget(@ptxt_address2, 3, 3, 1, 1)

    @label_14 = Qt::Label.new(saveSupplierFrame)
    @label_14.objectName = "label_14"

    @gridLayout_2.addWidget(@label_14, 2, 2, 1, 1)

    @label_12 = Qt::Label.new(saveSupplierFrame)
    @label_12.objectName = "label_12"

    @gridLayout_2.addWidget(@label_12, 3, 2, 1, 1)

    @label_13 = Qt::Label.new(saveSupplierFrame)
    @label_13.objectName = "label_13"

    @gridLayout_2.addWidget(@label_13, 4, 2, 1, 1)

    @label_11 = Qt::Label.new(saveSupplierFrame)
    @label_11.objectName = "label_11"

    @gridLayout_2.addWidget(@label_11, 5, 2, 1, 1)

    @txt_country2 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_country2.objectName = "txt_country2"

    @gridLayout_2.addWidget(@txt_country2, 5, 3, 1, 1)

    @txt_city2 = Qt::LineEdit.new(saveSupplierFrame)
    @txt_city2.objectName = "txt_city2"

    @gridLayout_2.addWidget(@txt_city2, 4, 3, 1, 1)


    @verticalLayout.addLayout(@gridLayout_2)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(saveSupplierFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_close = Qt::PushButton.new(saveSupplierFrame)
    @btn_close.objectName = "btn_close"

    @horizontalLayout.addWidget(@btn_close)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(saveSupplierFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), saveSupplierFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(saveSupplierFrame)
    end # setupUi

    def setup_ui(saveSupplierFrame)
        setupUi(saveSupplierFrame)
    end

    def retranslateUi(saveSupplierFrame)
    saveSupplierFrame.windowTitle = Qt::Application.translate("SaveSupplierFrame", "Save Supplier", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("SaveSupplierFrame", "Name", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SaveSupplierFrame", "Remarks", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SaveSupplierFrame", "Account No   ", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("SaveSupplierFrame", "Postal Code1", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("SaveSupplierFrame", "Telephone1", nil, Qt::Application::UnicodeUTF8)
    @label_10.text = Qt::Application.translate("SaveSupplierFrame", "City1", nil, Qt::Application::UnicodeUTF8)
    @txt_country1.text = Qt::Application.translate("SaveSupplierFrame", "Sri Lanka", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("SaveSupplierFrame", "Address1", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("SaveSupplierFrame", "Mobile1", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("SaveSupplierFrame", "Telephone2", nil, Qt::Application::UnicodeUTF8)
    @label_15.text = Qt::Application.translate("SaveSupplierFrame", "Mobile2", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("SaveSupplierFrame", "Country1", nil, Qt::Application::UnicodeUTF8)
    @label_14.text = Qt::Application.translate("SaveSupplierFrame", "Postal Code2", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("SaveSupplierFrame", "Address2", nil, Qt::Application::UnicodeUTF8)
    @label_13.text = Qt::Application.translate("SaveSupplierFrame", "City2", nil, Qt::Application::UnicodeUTF8)
    @label_11.text = Qt::Application.translate("SaveSupplierFrame", "Country2", nil, Qt::Application::UnicodeUTF8)
    @txt_country2.text = Qt::Application.translate("SaveSupplierFrame", "Sri Lanka", nil, Qt::Application::UnicodeUTF8)
    @btn_save.text = Qt::Application.translate("SaveSupplierFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("SaveSupplierFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(saveSupplierFrame)
        retranslateUi(saveSupplierFrame)
    end

end

module Ui
    class SaveSupplierFrame < Ui_SaveSupplierFrame
    end
end  # module Ui

