=begin
** Form generated from reading ui file 'save_customer.ui'
**
** Created: Wed Feb 19 23:36:45 2014
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SaveCustomerFrame
    attr_reader :verticalLayout_2
    attr_reader :tabWidget
    attr_reader :tab
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :label_8
    attr_reader :label_3
    attr_reader :label_2
    attr_reader :label_5
    attr_reader :label_9
    attr_reader :label_6
    attr_reader :label_13
    attr_reader :label_4
    attr_reader :label_14
    attr_reader :label_7
    attr_reader :label_10
    attr_reader :label_11
    attr_reader :txt_name
    attr_reader :label
    attr_reader :txt_website
    attr_reader :txt_contact_person
    attr_reader :txt_fax
    attr_reader :txt_email
    attr_reader :txt_mobile1
    attr_reader :txt_mobile2
    attr_reader :txt_telephone1
    attr_reader :txt_telephone2
    attr_reader :txt_postal
    attr_reader :txt_city
    attr_reader :ptxt_address
    attr_reader :txt_country
    attr_reader :label_12
    attr_reader :txt_password
    attr_reader :tab_2
    attr_reader :verticalLayout_3
    attr_reader :horizontalLayout_2
    attr_reader :btn_add
    attr_reader :horizontalSpacer_2
    attr_reader :btn_delete
    attr_reader :table
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_close

    def setupUi(saveCustomerFrame)
    if saveCustomerFrame.objectName.nil?
        saveCustomerFrame.objectName = "saveCustomerFrame"
    end
    saveCustomerFrame.resize(679, 699)
    saveCustomerFrame.frameShape = Qt::Frame::StyledPanel
    saveCustomerFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout_2 = Qt::VBoxLayout.new(saveCustomerFrame)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @tabWidget = Qt::TabWidget.new(saveCustomerFrame)
    @tabWidget.objectName = "tabWidget"
    @tabWidget.enabled = true
    @tab = Qt::Widget.new()
    @tab.objectName = "tab"
    @verticalLayout = Qt::VBoxLayout.new(@tab)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @label_8 = Qt::Label.new(@tab)
    @label_8.objectName = "label_8"

    @gridLayout.addWidget(@label_8, 7, 0, 1, 1)

    @label_3 = Qt::Label.new(@tab)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 2, 0, 1, 1)

    @label_2 = Qt::Label.new(@tab)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 1, 0, 1, 1)

    @label_5 = Qt::Label.new(@tab)
    @label_5.objectName = "label_5"

    @gridLayout.addWidget(@label_5, 4, 0, 1, 1)

    @label_9 = Qt::Label.new(@tab)
    @label_9.objectName = "label_9"

    @gridLayout.addWidget(@label_9, 8, 0, 1, 1)

    @label_6 = Qt::Label.new(@tab)
    @label_6.objectName = "label_6"

    @gridLayout.addWidget(@label_6, 5, 0, 1, 1)

    @label_13 = Qt::Label.new(@tab)
    @label_13.objectName = "label_13"

    @gridLayout.addWidget(@label_13, 11, 0, 1, 1)

    @label_4 = Qt::Label.new(@tab)
    @label_4.objectName = "label_4"

    @gridLayout.addWidget(@label_4, 3, 0, 1, 1)

    @label_14 = Qt::Label.new(@tab)
    @label_14.objectName = "label_14"

    @gridLayout.addWidget(@label_14, 12, 0, 1, 1)

    @label_7 = Qt::Label.new(@tab)
    @label_7.objectName = "label_7"

    @gridLayout.addWidget(@label_7, 6, 0, 1, 1)

    @label_10 = Qt::Label.new(@tab)
    @label_10.objectName = "label_10"

    @gridLayout.addWidget(@label_10, 9, 0, 1, 1)

    @label_11 = Qt::Label.new(@tab)
    @label_11.objectName = "label_11"

    @gridLayout.addWidget(@label_11, 10, 0, 1, 1)

    @txt_name = Qt::LineEdit.new(@tab)
    @txt_name.objectName = "txt_name"

    @gridLayout.addWidget(@txt_name, 0, 1, 1, 1)

    @label = Qt::Label.new(@tab)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 0, 0, 1, 1)

    @txt_website = Qt::LineEdit.new(@tab)
    @txt_website.objectName = "txt_website"

    @gridLayout.addWidget(@txt_website, 2, 1, 1, 1)

    @txt_contact_person = Qt::LineEdit.new(@tab)
    @txt_contact_person.objectName = "txt_contact_person"

    @gridLayout.addWidget(@txt_contact_person, 1, 1, 1, 1)

    @txt_fax = Qt::LineEdit.new(@tab)
    @txt_fax.objectName = "txt_fax"

    @gridLayout.addWidget(@txt_fax, 3, 1, 1, 1)

    @txt_email = Qt::LineEdit.new(@tab)
    @txt_email.objectName = "txt_email"

    @gridLayout.addWidget(@txt_email, 4, 1, 1, 1)

    @txt_mobile1 = Qt::LineEdit.new(@tab)
    @txt_mobile1.objectName = "txt_mobile1"

    @gridLayout.addWidget(@txt_mobile1, 5, 1, 1, 1)

    @txt_mobile2 = Qt::LineEdit.new(@tab)
    @txt_mobile2.objectName = "txt_mobile2"

    @gridLayout.addWidget(@txt_mobile2, 6, 1, 1, 1)

    @txt_telephone1 = Qt::LineEdit.new(@tab)
    @txt_telephone1.objectName = "txt_telephone1"

    @gridLayout.addWidget(@txt_telephone1, 7, 1, 1, 1)

    @txt_telephone2 = Qt::LineEdit.new(@tab)
    @txt_telephone2.objectName = "txt_telephone2"

    @gridLayout.addWidget(@txt_telephone2, 8, 1, 1, 1)

    @txt_postal = Qt::LineEdit.new(@tab)
    @txt_postal.objectName = "txt_postal"

    @gridLayout.addWidget(@txt_postal, 9, 1, 1, 1)

    @txt_city = Qt::LineEdit.new(@tab)
    @txt_city.objectName = "txt_city"

    @gridLayout.addWidget(@txt_city, 11, 1, 1, 1)

    @ptxt_address = Qt::PlainTextEdit.new(@tab)
    @ptxt_address.objectName = "ptxt_address"

    @gridLayout.addWidget(@ptxt_address, 10, 1, 1, 1)

    @txt_country = Qt::LineEdit.new(@tab)
    @txt_country.objectName = "txt_country"

    @gridLayout.addWidget(@txt_country, 12, 1, 1, 1)

    @label_12 = Qt::Label.new(@tab)
    @label_12.objectName = "label_12"

    @gridLayout.addWidget(@label_12, 13, 0, 1, 1)

    @txt_password = Qt::LineEdit.new(@tab)
    @txt_password.objectName = "txt_password"

    @gridLayout.addWidget(@txt_password, 13, 1, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @tabWidget.addTab(@tab, Qt::Application.translate("SaveCustomerFrame", "Customer Details", nil, Qt::Application::UnicodeUTF8))
    @tab_2 = Qt::Widget.new()
    @tab_2.objectName = "tab_2"
    @tab_2.enabled = true
    @verticalLayout_3 = Qt::VBoxLayout.new(@tab_2)
    @verticalLayout_3.objectName = "verticalLayout_3"
    @horizontalLayout_2 = Qt::HBoxLayout.new()
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @btn_add = Qt::PushButton.new(@tab_2)
    @btn_add.objectName = "btn_add"

    @horizontalLayout_2.addWidget(@btn_add)

    @horizontalSpacer_2 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout_2.addItem(@horizontalSpacer_2)

    @btn_delete = Qt::PushButton.new(@tab_2)
    @btn_delete.objectName = "btn_delete"
    @btn_delete.enabled = true

    @horizontalLayout_2.addWidget(@btn_delete)


    @verticalLayout_3.addLayout(@horizontalLayout_2)

    @table = Qt::TableView.new(@tab_2)
    @table.objectName = "table"
    @table.editTriggers = Qt::AbstractItemView::AnyKeyPressed|Qt::AbstractItemView::DoubleClicked|Qt::AbstractItemView::EditKeyPressed|Qt::AbstractItemView::SelectedClicked
    @table.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout_3.addWidget(@table)

    @tabWidget.addTab(@tab_2, Qt::Application.translate("SaveCustomerFrame", "Tour Rates", nil, Qt::Application::UnicodeUTF8))

    @verticalLayout_2.addWidget(@tabWidget)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(saveCustomerFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_close = Qt::PushButton.new(saveCustomerFrame)
    @btn_close.objectName = "btn_close"

    @horizontalLayout.addWidget(@btn_close)


    @verticalLayout_2.addLayout(@horizontalLayout)


    retranslateUi(saveCustomerFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), saveCustomerFrame, SLOT('close()'))

    @tabWidget.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(saveCustomerFrame)
    end # setupUi

    def setup_ui(saveCustomerFrame)
        setupUi(saveCustomerFrame)
    end

    def retranslateUi(saveCustomerFrame)
    saveCustomerFrame.windowTitle = Qt::Application.translate("SaveCustomerFrame", "Save Customer", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("SaveCustomerFrame", "Telephone 1", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SaveCustomerFrame", "Website", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SaveCustomerFrame", "Contact Person Name", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("SaveCustomerFrame", "Email", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("SaveCustomerFrame", "Telephone 2", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("SaveCustomerFrame", "Mobile 1", nil, Qt::Application::UnicodeUTF8)
    @label_13.text = Qt::Application.translate("SaveCustomerFrame", "City", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("SaveCustomerFrame", "Fax", nil, Qt::Application::UnicodeUTF8)
    @label_14.text = Qt::Application.translate("SaveCustomerFrame", "Country", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("SaveCustomerFrame", "Mobile 2", nil, Qt::Application::UnicodeUTF8)
    @label_10.text = Qt::Application.translate("SaveCustomerFrame", "Postal Code", nil, Qt::Application::UnicodeUTF8)
    @label_11.text = Qt::Application.translate("SaveCustomerFrame", "Address", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("SaveCustomerFrame", "Name", nil, Qt::Application::UnicodeUTF8)
    @txt_country.text = Qt::Application.translate("SaveCustomerFrame", "Sri Lanka", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("SaveCustomerFrame", "Password", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@tab), Qt::Application.translate("SaveCustomerFrame", "Customer Details", nil, Qt::Application::UnicodeUTF8))
    @btn_add.text = Qt::Application.translate("SaveCustomerFrame", "Add Rate", nil, Qt::Application::UnicodeUTF8)
    @btn_delete.text = Qt::Application.translate("SaveCustomerFrame", "Delete Selected Rate", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_2), Qt::Application.translate("SaveCustomerFrame", "Tour Rates", nil, Qt::Application::UnicodeUTF8))
    @btn_save.text = Qt::Application.translate("SaveCustomerFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("SaveCustomerFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(saveCustomerFrame)
        retranslateUi(saveCustomerFrame)
    end

end

module Ui
    class SaveCustomerFrame < Ui_SaveCustomerFrame
    end
end  # module Ui

