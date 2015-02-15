=begin
** Form generated from reading ui file 'save_expense.ui'
**
** Created: Sun Dec 15 20:53:38 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SaveExpenseFrame
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :label
    attr_reader :label_3
    attr_reader :label_2
    attr_reader :txt_name
    attr_reader :txt_description
    attr_reader :spn_amount
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_close

    def setupUi(saveExpenseFrame)
    if saveExpenseFrame.objectName.nil?
        saveExpenseFrame.objectName = "saveExpenseFrame"
    end
    saveExpenseFrame.resize(400, 172)
    saveExpenseFrame.frameShape = Qt::Frame::StyledPanel
    saveExpenseFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(saveExpenseFrame)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @label = Qt::Label.new(saveExpenseFrame)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 0, 0, 1, 1)

    @label_3 = Qt::Label.new(saveExpenseFrame)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 2, 0, 1, 1)

    @label_2 = Qt::Label.new(saveExpenseFrame)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 1, 0, 1, 1)

    @txt_name = Qt::LineEdit.new(saveExpenseFrame)
    @txt_name.objectName = "txt_name"

    @gridLayout.addWidget(@txt_name, 0, 1, 1, 1)

    @txt_description = Qt::LineEdit.new(saveExpenseFrame)
    @txt_description.objectName = "txt_description"

    @gridLayout.addWidget(@txt_description, 1, 1, 1, 1)

    @spn_amount = Qt::SpinBox.new(saveExpenseFrame)
    @spn_amount.objectName = "spn_amount"
    @spn_amount.maximum = 100000

    @gridLayout.addWidget(@spn_amount, 2, 1, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(saveExpenseFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_close = Qt::PushButton.new(saveExpenseFrame)
    @btn_close.objectName = "btn_close"

    @horizontalLayout.addWidget(@btn_close)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(saveExpenseFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), saveExpenseFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(saveExpenseFrame)
    end # setupUi

    def setup_ui(saveExpenseFrame)
        setupUi(saveExpenseFrame)
    end

    def retranslateUi(saveExpenseFrame)
    saveExpenseFrame.windowTitle = Qt::Application.translate("SaveExpenseFrame", "Save Expense Type", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("SaveExpenseFrame", "Name", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SaveExpenseFrame", "Amount", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SaveExpenseFrame", "Description", nil, Qt::Application::UnicodeUTF8)
    @btn_save.text = Qt::Application.translate("SaveExpenseFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("SaveExpenseFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(saveExpenseFrame)
        retranslateUi(saveExpenseFrame)
    end

end

module Ui
    class SaveExpenseFrame < Ui_SaveExpenseFrame
    end
end  # module Ui

