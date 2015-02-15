=begin
** Form generated from reading ui file 'sub1.ui'
**
** Created: Sun Dec 15 17:41:14 2013
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Form
    attr_reader :verticalLayout_2
    attr_reader :tableView

    def setupUi(form)
    if form.objectName.nil?
        form.objectName = "form"
    end
    form.resize(623, 479)
    @verticalLayout_2 = Qt::VBoxLayout.new(form)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @tableView = Qt::TableView.new(form)
    @tableView.objectName = "tableView"
    @tableView.alternatingRowColors = true
    @tableView.selectionBehavior = Qt::AbstractItemView::SelectRows
    @tableView.iconSize = Qt::Size.new(100, 100)

    @verticalLayout_2.addWidget(@tableView)


    retranslateUi(form)
    Qt::Object.connect(@tableView, SIGNAL('doubleClicked(QModelIndex)'), form, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(form)
    end # setupUi

    def setup_ui(form)
        setupUi(form)
    end

    def retranslateUi(form)
    form.windowTitle = Qt::Application.translate("Form", "Tour Requests", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(form)
        retranslateUi(form)
    end

end

module Ui
    class Form < Ui_Form
    end
end  # module Ui

