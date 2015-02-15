=begin
** Form generated from reading ui file 'conform_tour_request.ui'
**
** Created: Wed Feb 19 17:21:21 2014
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_TourRequestConfirmFrame
    attr_reader :btn_confirm
    attr_reader :btn_reject
    attr_reader :btn_close
    attr_reader :gridLayoutWidget
    attr_reader :gridLayout
    attr_reader :lbl_no_of_days
    attr_reader :lbl_customer_name
    attr_reader :label_4
    attr_reader :lbl_location
    attr_reader :lbl_time
    attr_reader :cmb_driver
    attr_reader :lbl_date
    attr_reader :cmb_vehicle
    attr_reader :label
    attr_reader :label_5
    attr_reader :label_2
    attr_reader :label_3
    attr_reader :label_6
    attr_reader :label_7

    def setupUi(tourRequestConfirmFrame)
    if tourRequestConfirmFrame.objectName.nil?
        tourRequestConfirmFrame.objectName = "tourRequestConfirmFrame"
    end
    tourRequestConfirmFrame.resize(494, 385)
    tourRequestConfirmFrame.frameShape = Qt::Frame::StyledPanel
    tourRequestConfirmFrame.frameShadow = Qt::Frame::Raised
    @btn_confirm = Qt::PushButton.new(tourRequestConfirmFrame)
    @btn_confirm.objectName = "btn_confirm"
    @btn_confirm.geometry = Qt::Rect.new(170, 330, 151, 31)
    @btn_reject = Qt::PushButton.new(tourRequestConfirmFrame)
    @btn_reject.objectName = "btn_reject"
    @btn_reject.geometry = Qt::Rect.new(10, 330, 151, 31)
    @btn_close = Qt::PushButton.new(tourRequestConfirmFrame)
    @btn_close.objectName = "btn_close"
    @btn_close.geometry = Qt::Rect.new(330, 330, 151, 31)
    @gridLayoutWidget = Qt::Widget.new(tourRequestConfirmFrame)
    @gridLayoutWidget.objectName = "gridLayoutWidget"
    @gridLayoutWidget.geometry = Qt::Rect.new(10, 20, 471, 291)
    @gridLayout = Qt::GridLayout.new(@gridLayoutWidget)
    @gridLayout.objectName = "gridLayout"
    @gridLayout.setContentsMargins(0, 0, 0, 0)
    @lbl_no_of_days = Qt::Label.new(@gridLayoutWidget)
    @lbl_no_of_days.objectName = "lbl_no_of_days"

    @gridLayout.addWidget(@lbl_no_of_days, 3, 1, 1, 1)

    @lbl_customer_name = Qt::Label.new(@gridLayoutWidget)
    @lbl_customer_name.objectName = "lbl_customer_name"

    @gridLayout.addWidget(@lbl_customer_name, 1, 1, 1, 1)

    @label_4 = Qt::Label.new(@gridLayoutWidget)
    @label_4.objectName = "label_4"

    @gridLayout.addWidget(@label_4, 1, 0, 1, 1)

    @lbl_location = Qt::Label.new(@gridLayoutWidget)
    @lbl_location.objectName = "lbl_location"

    @gridLayout.addWidget(@lbl_location, 5, 1, 1, 1)

    @lbl_time = Qt::Label.new(@gridLayoutWidget)
    @lbl_time.objectName = "lbl_time"

    @gridLayout.addWidget(@lbl_time, 4, 1, 1, 1)

    @cmb_driver = Qt::ComboBox.new(@gridLayoutWidget)
    @cmb_driver.objectName = "cmb_driver"

    @gridLayout.addWidget(@cmb_driver, 6, 1, 1, 1)

    @lbl_date = Qt::Label.new(@gridLayoutWidget)
    @lbl_date.objectName = "lbl_date"

    @gridLayout.addWidget(@lbl_date, 2, 1, 1, 1)

    @cmb_vehicle = Qt::ComboBox.new(@gridLayoutWidget)
    @cmb_vehicle.objectName = "cmb_vehicle"

    @gridLayout.addWidget(@cmb_vehicle, 7, 1, 1, 1)

    @label = Qt::Label.new(@gridLayoutWidget)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 2, 0, 1, 1)

    @label_5 = Qt::Label.new(@gridLayoutWidget)
    @label_5.objectName = "label_5"

    @gridLayout.addWidget(@label_5, 3, 0, 1, 1)

    @label_2 = Qt::Label.new(@gridLayoutWidget)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 4, 0, 1, 1)

    @label_3 = Qt::Label.new(@gridLayoutWidget)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 5, 0, 1, 1)

    @label_6 = Qt::Label.new(@gridLayoutWidget)
    @label_6.objectName = "label_6"

    @gridLayout.addWidget(@label_6, 6, 0, 1, 1)

    @label_7 = Qt::Label.new(@gridLayoutWidget)
    @label_7.objectName = "label_7"

    @gridLayout.addWidget(@label_7, 7, 0, 1, 1)


    retranslateUi(tourRequestConfirmFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), tourRequestConfirmFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(tourRequestConfirmFrame)
    end # setupUi

    def setup_ui(tourRequestConfirmFrame)
        setupUi(tourRequestConfirmFrame)
    end

    def retranslateUi(tourRequestConfirmFrame)
    tourRequestConfirmFrame.windowTitle = Qt::Application.translate("TourRequestConfirmFrame", "Confirm Tour Request", nil, Qt::Application::UnicodeUTF8)
    @btn_confirm.text = Qt::Application.translate("TourRequestConfirmFrame", "Confirm Request", nil, Qt::Application::UnicodeUTF8)
    @btn_reject.text = Qt::Application.translate("TourRequestConfirmFrame", "Reject Request", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("TourRequestConfirmFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    @lbl_no_of_days.text = Qt::Application.translate("TourRequestConfirmFrame", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @lbl_customer_name.text = Qt::Application.translate("TourRequestConfirmFrame", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label_4.text = Qt::Application.translate("TourRequestConfirmFrame", "Customer Name", nil, Qt::Application::UnicodeUTF8)
    @lbl_location.text = Qt::Application.translate("TourRequestConfirmFrame", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @lbl_time.text = Qt::Application.translate("TourRequestConfirmFrame", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @lbl_date.text = Qt::Application.translate("TourRequestConfirmFrame", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("TourRequestConfirmFrame", "Date", nil, Qt::Application::UnicodeUTF8)
    @label_5.text = Qt::Application.translate("TourRequestConfirmFrame", "No Of Days", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("TourRequestConfirmFrame", "Time", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("TourRequestConfirmFrame", "Location", nil, Qt::Application::UnicodeUTF8)
    @label_6.text = Qt::Application.translate("TourRequestConfirmFrame", "Driver ", nil, Qt::Application::UnicodeUTF8)
    @label_7.text = Qt::Application.translate("TourRequestConfirmFrame", "Vehicle", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(tourRequestConfirmFrame)
        retranslateUi(tourRequestConfirmFrame)
    end

end

module Ui
    class TourRequestConfirmFrame < Ui_TourRequestConfirmFrame
    end
end  # module Ui

