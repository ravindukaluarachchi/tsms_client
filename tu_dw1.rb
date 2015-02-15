=begin
** Form generated from reading ui file 'dw1.ui'
**
** Created: Wed Dec 4 17:35:05 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_DockWidget
    attr_reader :dockWidgetContents
    attr_reader :pushButton

    def setupUi(dockWidget)
    if dockWidget.objectName.nil?
        dockWidget.objectName = "dockWidget"
    end
    dockWidget.resize(400, 300)
    @dockWidgetContents = Qt::Widget.new(dockWidget)
    @dockWidgetContents.objectName = "dockWidgetContents"
    @pushButton = Qt::PushButton.new(@dockWidgetContents)
    @pushButton.objectName = "pushButton"
    @pushButton.geometry = Qt::Rect.new(160, 100, 97, 31)
    dockWidget.setWidget(@dockWidgetContents)

    retranslateUi(dockWidget)

    Qt::MetaObject.connectSlotsByName(dockWidget)
    end # setupUi

    def setup_ui(dockWidget)
        setupUi(dockWidget)
    end

    def retranslateUi(dockWidget)
    dockWidget.windowTitle = Qt::Application.translate("DockWidget", "DockWidget", nil, Qt::Application::UnicodeUTF8)
    @pushButton.text = Qt::Application.translate("DockWidget", "PushButton", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(dockWidget)
        retranslateUi(dockWidget)
    end

end

module Ui
    class DockWidget < Ui_DockWidget
    end
end  # module Ui

