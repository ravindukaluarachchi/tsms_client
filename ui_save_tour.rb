=begin
** Form generated from reading ui file 'save_tour.ui'
**
** Created: Mon Dec 16 21:45:33 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SaveTourFrame
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :label
    attr_reader :label_13
    attr_reader :label_11
    attr_reader :cmb_location
    attr_reader :label_3
    attr_reader :label_4
    attr_reader :label_10
    attr_reader :label_7
    attr_reader :cmb_driver
    attr_reader :spn_start_meter
    attr_reader :cmb_vehicle
    attr_reader :cmb_customer
    attr_reader :label_2
    attr_reader :spn_status
    attr_reader :label_5
    attr_reader :spn_distance
    attr_reader :label_8
    attr_reader :label_6
    attr_reader :spn_start_date
    attr_reader :spn_start_time
    attr_reader :spn_nod
    attr_reader :spn_end_time
    attr_reader :label_9
    attr_reader :spn_rate
    attr_reader :label_12
    attr_reader :spn_end_meter
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_cancel

    def setupUi(saveTourFrame)
    if saveTourFrame.objectName.nil?
        saveTourFrame.objectName = "saveTourFrame"
    end
    saveTourFrame.resize(518, 313)
    saveTourFrame.frameShape = Qt::Frame::StyledPanel
    saveTourFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(saveTourFrame)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @label = Qt::Label.new(saveTourFrame)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 1, 0, 1, 1)

    @label_13 = Qt::Label.new(saveTourFrame)
    @label_13.objectName = "label_13"

    @gridLayout.addWidget(@label_13, 12, 0, 1, 1)

    @label_11 = Qt::Label.new(saveTourFrame)
    @label_11.objectName = "label_11"

    @gridLayout.addWidget(@label_11, 10, 0, 1, 1)

    @cmb_location = Qt::ComboBox.new(saveTourFrame)
    @cmb_location.objectName = "cmb_location"

    @gridLayout.addWidget(@cmb_location, 1, 1, 1, 1)

    @label_3 = Qt::Label.new(saveTourFrame)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 3, 0, 1, 1)

    @label_4 = Qt::Label.new(saveTourFrame)
    @label_4.objectName = "label_4"

    @gridLayout.addWidget(@label_4, 4, 0, 1, 1)

    @label_10 = Qt::Label.new(saveTourFrame)
    @label_10.objectName = "label_10"

    @gridLayout.addWidget(@label_10, 2, 0, 1, 1)

    @label_7 = Qt::Label.new(saveTourFrame)
    @label_7.objectName = "label_7"

    @gridLayout.addWidget(@label_7, 2, 2, 1, 1)

    @cmb_driver = Qt::ComboBox.new(saveTourFrame)
    @cmb_driver.objectName = "cmb_driver"

    @gridLayout.addWidget(@cmb_driver, 3, 1, 1, 1)

    @spn_start_meter = Qt::DoubleSpinBox.new(saveTourFrame)
    @spn_start_meter.objectName = "spn_start_meter"

    @gridLayout.addWidget(@spn_start_meter, 10, 1, 1, 1)

    @cmb_vehicle = Qt::ComboBox.new(saveTourFrame)
    @cmb_vehicle.objectName = "cmb_vehicle"

    @gridLayout.addWidget(@cmb_vehicle, 4, 1, 1, 1)

    @cmb_customer = Qt::ComboBox.new(saveTourFrame)
    @cmb_customer.objectName = "cmb_customer"

    @gridLayout.addWidget(@cmb_customer, 0, 1, 1, 1)

    @label_2 = Qt::Label.new(saveTourFrame)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 0, 0, 1, 1)

    @spn_status = Qt::ComboBox.new(saveTourFrame)
    @spn_status.objectName = "spn_status"

    @gridLayout.addWidget(@spn_status, 12, 1, 1, 1)

    @label_5 = Qt::Label.new(saveTourFrame)
    @label_5.objectName = "label_5"

    @gridLayout.addWidget(@label_5, 0, 2, 1, 1)

    @spn_distance = Qt::DoubleSpinBox.new(saveTourFrame)
    @spn_distance.objectName = "spn_distance"

    @gridLayout.addWidget(@spn_distance, 2, 1, 1, 1)

    @label_8 = Qt::Label.new(saveTourFrame)
    @label_8.objectName = "label_8"

    @gridLayout.addWidget(@label_8, 3, 2, 1, 1)

    @label_6 = Qt::Label.new(saveTourFrame)
    @label_6.objectName = "label_6"

    @gridLayout.addWidget(@label_6, 1, 2, 1, 1)

    @spn_start_date = Qt::DateEdit.new(saveTourFrame)
    @spn_start_date.objectName = "spn_start_date"
    @spn_start_date.calendarPopup = true

    @gridLayout.addWidget(@spn_start_date, 0, 3, 1, 1)

    @spn_start_time = Qt::TimeEdit.new(saveTourFrame)
    @spn_start_time.objectName = "spn_start_time"
    @spn_start_time.calendarPopup = true

    @gridLayout.addWidget(@spn_start_time, 1, 3, 1, 1)

    @spn_nod = Qt::SpinBox.new(saveTourFrame)
    @spn_nod.objectName = "spn_nod"

    @gridLayout.addWidget(@spn_nod, 2, 3, 1, 1)

    @spn_end_time = Qt::TimeEdit.new(saveTourFrame)
    @spn_end_time.objectName = "spn_end_time"
    @spn_end_time.calendarPopup = true

    @gridLayout.addWidget(@spn_end_time, 3, 3, 1, 1)

    @label_9 = Qt::Label.new(saveTourFrame)
    @label_9.objectName = "label_9"

    @gridLayout.addWidget(@label_9, 4, 2, 1, 1)

    @spn_rate = Qt::DoubleSpinBox.new(saveTourFrame)
    @spn_rate.objectName = "spn_rate"

    @gridLayout.addWidget(@spn_rate, 4, 3, 1, 1)

    @label_12 = Qt::Label.new(saveTourFrame)
    @label_12.objectName = "label_12"

    @gridLayout.addWidget(@label_12, 10, 2, 1, 1)

    @spn_end_meter = Qt::DoubleSpinBox.new(saveTourFrame)
    @spn_end_meter.objectName = "spn_end_meter"

    @gridLayout.addWidget(@spn_end_meter, 10, 3, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(saveTourFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_cancel = Qt::PushButton.new(saveTourFrame)
    @btn_cancel.objectName = "btn_cancel"

    @horizontalLayout.addWidget(@btn_cancel)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(saveTourFrame)
    Qt::Object.connect(@btn_cancel, SIGNAL('clicked()'), saveTourFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(saveTourFrame)
    end # setupUi

    def setup_ui(saveTourFrame)
        setupUi(saveTourFrame)
    end

    def retranslateUi(saveTourFrame)
    saveTourFrame.windowTitle = Qt::Application.translate("SaveTourFrame", "Save Tour", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("SaveTourFrame", "Location", nil, Qt::Application::UnicodeUTF8)
    @label_13.text = Qt::Application.translate("SaveTourFrame", "Status", nil, Qt::Application::UnicodeUTF8)
    @label_11.text = Qt::Application.translate("SaveTourFrame", "Start Meter", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SaveTourFrame", "Driver", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("SaveTourFrame", "Vehicle", nil, Qt::Application::UnicodeUTF8)
    @label_10.text = Qt::Application.translate("SaveTourFrame", "Distance", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("SaveTourFrame", "No Of Days", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SaveTourFrame", "Customer", nil, Qt::Application::UnicodeUTF8)
    @spn_status.insertItems(0, [Qt::Application.translate("SaveTourFrame", "Requested", nil, Qt::Application::UnicodeUTF8),
        Qt::Application.translate("SaveTourFrame", "Confirmed", nil, Qt::Application::UnicodeUTF8),
        Qt::Application.translate("SaveTourFrame", "Finished", nil, Qt::Application::UnicodeUTF8)])
    @label_5.text = Qt::Application.translate("SaveTourFrame", "Start Date", nil, Qt::Application::UnicodeUTF8)
    @label_8.text = Qt::Application.translate("SaveTourFrame", "End Time", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("SaveTourFrame", "Start Time", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("SaveTourFrame", "Rate", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("SaveTourFrame", "End Meter", nil, Qt::Application::UnicodeUTF8)
    @btn_save.text = Qt::Application.translate("SaveTourFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_cancel.text = Qt::Application.translate("SaveTourFrame", "Cancel", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(saveTourFrame)
        retranslateUi(saveTourFrame)
    end

end

module Ui
    class SaveTourFrame < Ui_SaveTourFrame
    end
end  # module Ui

