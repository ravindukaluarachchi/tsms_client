=begin
** Form generated from reading ui file 'save_driver.ui'
**
** Created: Sun Dec 8 14:56:35 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Frame
    attr_reader :verticalLayout
    attr_reader :tabWidget
    attr_reader :tab
    attr_reader :verticalLayout_3
    attr_reader :gridLayout_3
    attr_reader :label_6
    attr_reader :label_5
    attr_reader :label_4
    attr_reader :text_nic
    attr_reader :text_first_name
    attr_reader :txt_last_name
    attr_reader :label_20
    attr_reader :txt_licence
    attr_reader :gridLayout_5
    attr_reader :label_9
    attr_reader :cmb_blood_group
    attr_reader :label_8
    attr_reader :cmb_status
    attr_reader :cmb_sex
    attr_reader :label_7
    attr_reader :label_21
    attr_reader :cmb_title
    attr_reader :gridLayout_4
    attr_reader :text_telephone1
    attr_reader :label_12
    attr_reader :label_11
    attr_reader :label_13
    attr_reader :text_country
    attr_reader :label_14
    attr_reader :text_city
    attr_reader :txt_mobile1
    attr_reader :label_16
    attr_reader :label_17
    attr_reader :label_10
    attr_reader :label_19
    attr_reader :label_18
    attr_reader :label_15
    attr_reader :text_mobile2
    attr_reader :text_telephone2
    attr_reader :text_city2
    attr_reader :text_country2
    attr_reader :text_address1
    attr_reader :text_address2
    attr_reader :tab_2
    attr_reader :verticalLayout_2
    attr_reader :gridLayout_2
    attr_reader :label_3
    attr_reader :label_2
    attr_reader :label
    attr_reader :txt_emergency_name
    attr_reader :text_emergency_relationship
    attr_reader :text_emergency_number
    attr_reader :verticalSpacer
    attr_reader :tab_3
    attr_reader :gridLayout
    attr_reader :txt_experience
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_cancel

    def setupUi(frame)
    if frame.objectName.nil?
        frame.objectName = "frame"
    end
    frame.resize(626, 654)
    frame.frameShape = Qt::Frame::StyledPanel
    frame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(frame)
    @verticalLayout.objectName = "verticalLayout"
    @tabWidget = Qt::TabWidget.new(frame)
    @tabWidget.objectName = "tabWidget"
    @tab = Qt::Widget.new()
    @tab.objectName = "tab"
    @verticalLayout_3 = Qt::VBoxLayout.new(@tab)
    @verticalLayout_3.objectName = "verticalLayout_3"
    @gridLayout_3 = Qt::GridLayout.new()
    @gridLayout_3.objectName = "gridLayout_3"
    @label_6 = Qt::Label.new(@tab)
    @label_6.objectName = "label_6"

    @gridLayout_3.addWidget(@label_6, 3, 0, 1, 1)

    @label_5 = Qt::Label.new(@tab)
    @label_5.objectName = "label_5"

    @gridLayout_3.addWidget(@label_5, 2, 0, 1, 1)

    @label_4 = Qt::Label.new(@tab)
    @label_4.objectName = "label_4"

    @gridLayout_3.addWidget(@label_4, 1, 0, 1, 1)

    @text_nic = Qt::LineEdit.new(@tab)
    @text_nic.objectName = "text_nic"

    @gridLayout_3.addWidget(@text_nic, 1, 1, 1, 1)

    @text_first_name = Qt::LineEdit.new(@tab)
    @text_first_name.objectName = "text_first_name"

    @gridLayout_3.addWidget(@text_first_name, 2, 1, 1, 1)

    @txt_last_name = Qt::LineEdit.new(@tab)
    @txt_last_name.objectName = "txt_last_name"

    @gridLayout_3.addWidget(@txt_last_name, 3, 1, 1, 1)

    @label_20 = Qt::Label.new(@tab)
    @label_20.objectName = "label_20"

    @gridLayout_3.addWidget(@label_20, 4, 0, 1, 1)

    @txt_licence = Qt::LineEdit.new(@tab)
    @txt_licence.objectName = "txt_licence"

    @gridLayout_3.addWidget(@txt_licence, 4, 1, 1, 1)


    @verticalLayout_3.addLayout(@gridLayout_3)

    @gridLayout_5 = Qt::GridLayout.new()
    @gridLayout_5.objectName = "gridLayout_5"
    @gridLayout_5.horizontalSpacing = 22
    @label_9 = Qt::Label.new(@tab)
    @label_9.objectName = "label_9"

    @gridLayout_5.addWidget(@label_9, 3, 0, 1, 1)

    @cmb_blood_group = Qt::ComboBox.new(@tab)
    @cmb_blood_group.objectName = "cmb_blood_group"

    @gridLayout_5.addWidget(@cmb_blood_group, 3, 1, 1, 1)

    @label_8 = Qt::Label.new(@tab)
    @label_8.objectName = "label_8"

    @gridLayout_5.addWidget(@label_8, 3, 2, 1, 1)

    @cmb_status = Qt::ComboBox.new(@tab)
    @cmb_status.objectName = "cmb_status"

    @gridLayout_5.addWidget(@cmb_status, 3, 3, 1, 1)

    @cmb_sex = Qt::ComboBox.new(@tab)
    @cmb_sex.objectName = "cmb_sex"

    @gridLayout_5.addWidget(@cmb_sex, 2, 3, 1, 1)

    @label_7 = Qt::Label.new(@tab)
    @label_7.objectName = "label_7"

    @gridLayout_5.addWidget(@label_7, 2, 2, 1, 1)

    @label_21 = Qt::Label.new(@tab)
    @label_21.objectName = "label_21"

    @gridLayout_5.addWidget(@label_21, 2, 0, 1, 1)

    @cmb_title = Qt::ComboBox.new(@tab)
    @cmb_title.objectName = "cmb_title"

    @gridLayout_5.addWidget(@cmb_title, 2, 1, 1, 1)


    @verticalLayout_3.addLayout(@gridLayout_5)

    @gridLayout_4 = Qt::GridLayout.new()
    @gridLayout_4.objectName = "gridLayout_4"
    @text_telephone1 = Qt::LineEdit.new(@tab)
    @text_telephone1.objectName = "text_telephone1"

    @gridLayout_4.addWidget(@text_telephone1, 1, 1, 1, 1)

    @label_12 = Qt::Label.new(@tab)
    @label_12.objectName = "label_12"

    @gridLayout_4.addWidget(@label_12, 2, 0, 1, 1)

    @label_11 = Qt::Label.new(@tab)
    @label_11.objectName = "label_11"

    @gridLayout_4.addWidget(@label_11, 1, 0, 1, 1)

    @label_13 = Qt::Label.new(@tab)
    @label_13.objectName = "label_13"

    @gridLayout_4.addWidget(@label_13, 3, 0, 1, 1)

    @text_country = Qt::LineEdit.new(@tab)
    @text_country.objectName = "text_country"

    @gridLayout_4.addWidget(@text_country, 4, 1, 1, 1)

    @label_14 = Qt::Label.new(@tab)
    @label_14.objectName = "label_14"

    @gridLayout_4.addWidget(@label_14, 4, 0, 1, 1)

    @text_city = Qt::LineEdit.new(@tab)
    @text_city.objectName = "text_city"

    @gridLayout_4.addWidget(@text_city, 3, 1, 1, 1)

    @txt_mobile1 = Qt::LineEdit.new(@tab)
    @txt_mobile1.objectName = "txt_mobile1"

    @gridLayout_4.addWidget(@txt_mobile1, 0, 1, 1, 1)

    @label_16 = Qt::Label.new(@tab)
    @label_16.objectName = "label_16"

    @gridLayout_4.addWidget(@label_16, 1, 2, 1, 1)

    @label_17 = Qt::Label.new(@tab)
    @label_17.objectName = "label_17"

    @gridLayout_4.addWidget(@label_17, 2, 2, 1, 1)

    @label_10 = Qt::Label.new(@tab)
    @label_10.objectName = "label_10"

    @gridLayout_4.addWidget(@label_10, 0, 0, 1, 1)

    @label_19 = Qt::Label.new(@tab)
    @label_19.objectName = "label_19"

    @gridLayout_4.addWidget(@label_19, 4, 2, 1, 1)

    @label_18 = Qt::Label.new(@tab)
    @label_18.objectName = "label_18"

    @gridLayout_4.addWidget(@label_18, 3, 2, 1, 1)

    @label_15 = Qt::Label.new(@tab)
    @label_15.objectName = "label_15"

    @gridLayout_4.addWidget(@label_15, 0, 2, 1, 1)

    @text_mobile2 = Qt::LineEdit.new(@tab)
    @text_mobile2.objectName = "text_mobile2"

    @gridLayout_4.addWidget(@text_mobile2, 0, 3, 1, 1)

    @text_telephone2 = Qt::LineEdit.new(@tab)
    @text_telephone2.objectName = "text_telephone2"

    @gridLayout_4.addWidget(@text_telephone2, 1, 3, 1, 1)

    @text_city2 = Qt::LineEdit.new(@tab)
    @text_city2.objectName = "text_city2"

    @gridLayout_4.addWidget(@text_city2, 3, 3, 1, 1)

    @text_country2 = Qt::LineEdit.new(@tab)
    @text_country2.objectName = "text_country2"

    @gridLayout_4.addWidget(@text_country2, 4, 3, 1, 1)

    @text_address1 = Qt::PlainTextEdit.new(@tab)
    @text_address1.objectName = "text_address1"

    @gridLayout_4.addWidget(@text_address1, 2, 1, 1, 1)

    @text_address2 = Qt::PlainTextEdit.new(@tab)
    @text_address2.objectName = "text_address2"

    @gridLayout_4.addWidget(@text_address2, 2, 3, 1, 1)


    @verticalLayout_3.addLayout(@gridLayout_4)

    @tabWidget.addTab(@tab, Qt::Application.translate("Frame", "Personal Details", nil, Qt::Application::UnicodeUTF8))
    @tab_2 = Qt::Widget.new()
    @tab_2.objectName = "tab_2"
    @verticalLayout_2 = Qt::VBoxLayout.new(@tab_2)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @gridLayout_2 = Qt::GridLayout.new()
    @gridLayout_2.objectName = "gridLayout_2"
    @label_3 = Qt::Label.new(@tab_2)
    @label_3.objectName = "label_3"

    @gridLayout_2.addWidget(@label_3, 2, 0, 1, 1)

    @label_2 = Qt::Label.new(@tab_2)
    @label_2.objectName = "label_2"

    @gridLayout_2.addWidget(@label_2, 1, 0, 1, 1)

    @label = Qt::Label.new(@tab_2)
    @label.objectName = "label"

    @gridLayout_2.addWidget(@label, 0, 0, 1, 1)

    @txt_emergency_name = Qt::LineEdit.new(@tab_2)
    @txt_emergency_name.objectName = "txt_emergency_name"

    @gridLayout_2.addWidget(@txt_emergency_name, 0, 1, 1, 1)

    @text_emergency_relationship = Qt::LineEdit.new(@tab_2)
    @text_emergency_relationship.objectName = "text_emergency_relationship"

    @gridLayout_2.addWidget(@text_emergency_relationship, 1, 1, 1, 1)

    @text_emergency_number = Qt::LineEdit.new(@tab_2)
    @text_emergency_number.objectName = "text_emergency_number"

    @gridLayout_2.addWidget(@text_emergency_number, 2, 1, 1, 1)


    @verticalLayout_2.addLayout(@gridLayout_2)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @verticalLayout_2.addItem(@verticalSpacer)

    @tabWidget.addTab(@tab_2, Qt::Application.translate("Frame", "Emergency Details", nil, Qt::Application::UnicodeUTF8))
    @tab_3 = Qt::Widget.new()
    @tab_3.objectName = "tab_3"
    @gridLayout = Qt::GridLayout.new(@tab_3)
    @gridLayout.objectName = "gridLayout"
    @txt_experience = Qt::PlainTextEdit.new(@tab_3)
    @txt_experience.objectName = "txt_experience"

    @gridLayout.addWidget(@txt_experience, 0, 0, 1, 1)

    @tabWidget.addTab(@tab_3, Qt::Application.translate("Frame", "Experience", nil, Qt::Application::UnicodeUTF8))

    @verticalLayout.addWidget(@tabWidget)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(frame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_cancel = Qt::PushButton.new(frame)
    @btn_cancel.objectName = "btn_cancel"

    @horizontalLayout.addWidget(@btn_cancel)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(frame)
    Qt::Object.connect(@btn_cancel, SIGNAL('clicked()'), frame, SLOT('close()'))

    @tabWidget.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(frame)
    end # setupUi

    def setup_ui(frame)
        setupUi(frame)
    end

    def retranslateUi(frame)
    frame.windowTitle = Qt::Application.translate("Frame", "Save Driver Details", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("Frame", "Last Name", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("Frame", "First Name", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("Frame", "NIC", nil, Qt::Application::UnicodeUTF8)
    @label_20.text = Qt::Application.translate("Frame", "Licence Number", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("Frame", "Blood Group", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("Frame", "Martial Status", nil, Qt::Application::UnicodeUTF8)
    @cmb_sex.currentText = ''
    @label_7.text = Qt::Application.translate("Frame", "Sex", nil, Qt::Application::UnicodeUTF8)
    @label_21.text = Qt::Application.translate("Frame", "Title", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("Frame", "Address1", nil, Qt::Application::UnicodeUTF8)
    @label_11.text = Qt::Application.translate("Frame", "Telephone1", nil, Qt::Application::UnicodeUTF8)
    @label_13.text = Qt::Application.translate("Frame", "City1", nil, Qt::Application::UnicodeUTF8)
    @label_14.text = Qt::Application.translate("Frame", "Countrry1", nil, Qt::Application::UnicodeUTF8)
    @label_16.text = Qt::Application.translate("Frame", "Telephone2", nil, Qt::Application::UnicodeUTF8)
    @label_17.text = Qt::Application.translate("Frame", "Address2", nil, Qt::Application::UnicodeUTF8)
    @label_10.text = Qt::Application.translate("Frame", "Mobile1", nil, Qt::Application::UnicodeUTF8)
    @label_19.text = Qt::Application.translate("Frame", "Country2", nil, Qt::Application::UnicodeUTF8)
    @label_18.text = Qt::Application.translate("Frame", "City2", nil, Qt::Application::UnicodeUTF8)
    @label_15.text = Qt::Application.translate("Frame", "Mobile2", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@tab), Qt::Application.translate("Frame", "Personal Details", nil, Qt::Application::UnicodeUTF8))
    @label_3.text = Qt::Application.translate("Frame", "Emergency Contat Number", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("Frame", "Relationship to driver", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("Frame", "Emergency Contat Person Name", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_2), Qt::Application.translate("Frame", "Emergency Details", nil, Qt::Application::UnicodeUTF8))
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_3), Qt::Application.translate("Frame", "Experience", nil, Qt::Application::UnicodeUTF8))
    @btn_save.text = Qt::Application.translate("Frame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_cancel.text = Qt::Application.translate("Frame", "Cancel", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(frame)
        retranslateUi(frame)
    end

end

module Ui
    class Frame < Ui_Frame
    end
end  # module Ui

