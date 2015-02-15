=begin
** Form generated from reading ui file 'save_location.ui'
**
** Created: Sun Dec 15 18:51:05 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_SaveLocationFrame
    attr_reader :verticalLayout
    attr_reader :gridLayout
    attr_reader :spn_rate
    attr_reader :label_2
    attr_reader :label
    attr_reader :txt_location
    attr_reader :label_3
    attr_reader :spn_distance
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :btn_save
    attr_reader :btn_close

    def setupUi(saveLocationFrame)
    if saveLocationFrame.objectName.nil?
        saveLocationFrame.objectName = "saveLocationFrame"
    end
    saveLocationFrame.resize(433, 180)
    saveLocationFrame.frameShape = Qt::Frame::StyledPanel
    saveLocationFrame.frameShadow = Qt::Frame::Raised
    @verticalLayout = Qt::VBoxLayout.new(saveLocationFrame)
    @verticalLayout.objectName = "verticalLayout"
    @gridLayout = Qt::GridLayout.new()
    @gridLayout.objectName = "gridLayout"
    @spn_rate = Qt::DoubleSpinBox.new(saveLocationFrame)
    @spn_rate.objectName = "spn_rate"
    @spn_rate.maximum = 100000

    @gridLayout.addWidget(@spn_rate, 2, 1, 1, 1)

    @label_2 = Qt::Label.new(saveLocationFrame)
    @label_2.objectName = "label_2"

    @gridLayout.addWidget(@label_2, 2, 0, 1, 1)

    @label = Qt::Label.new(saveLocationFrame)
    @label.objectName = "label"

    @gridLayout.addWidget(@label, 0, 0, 1, 1)

    @txt_location = Qt::LineEdit.new(saveLocationFrame)
    @txt_location.objectName = "txt_location"

    @gridLayout.addWidget(@txt_location, 0, 1, 1, 1)

    @label_3 = Qt::Label.new(saveLocationFrame)
    @label_3.objectName = "label_3"

    @gridLayout.addWidget(@label_3, 1, 0, 1, 1)

    @spn_distance = Qt::SpinBox.new(saveLocationFrame)
    @spn_distance.objectName = "spn_distance"
    @spn_distance.maximum = 1000
    @spn_distance.value = 0

    @gridLayout.addWidget(@spn_distance, 1, 1, 1, 1)


    @verticalLayout.addLayout(@gridLayout)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @btn_save = Qt::PushButton.new(saveLocationFrame)
    @btn_save.objectName = "btn_save"

    @horizontalLayout.addWidget(@btn_save)

    @btn_close = Qt::PushButton.new(saveLocationFrame)
    @btn_close.objectName = "btn_close"

    @horizontalLayout.addWidget(@btn_close)


    @verticalLayout.addLayout(@horizontalLayout)


    retranslateUi(saveLocationFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), saveLocationFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(saveLocationFrame)
    end # setupUi

    def setup_ui(saveLocationFrame)
        setupUi(saveLocationFrame)
    end

    def retranslateUi(saveLocationFrame)
    saveLocationFrame.windowTitle = Qt::Application.translate("SaveLocationFrame", "Save Location", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("SaveLocationFrame", "Rate", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("SaveLocationFrame", "Location", nil, Qt::Application::UnicodeUTF8)
    @label_3.text = Qt::Application.translate("SaveLocationFrame", "Distance", nil, Qt::Application::UnicodeUTF8)
    @btn_save.text = Qt::Application.translate("SaveLocationFrame", "Save", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("SaveLocationFrame", "Close", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(saveLocationFrame)
        retranslateUi(saveLocationFrame)
    end

end

module Ui
    class SaveLocationFrame < Ui_SaveLocationFrame
    end
end  # module Ui

