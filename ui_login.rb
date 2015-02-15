=begin
** Form generated from reading ui file 'login.ui'
**
** Created: Wed Feb 19 16:56:21 2014
**      by: Qt User Interface Compiler version 4.8.5
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_LoginFrame
    attr_reader :btn_login
    attr_reader :btn_close
    attr_reader :label
    attr_reader :label_2
    attr_reader :txt_user_name
    attr_reader :txt_password
    attr_reader :label_3
    attr_reader :lbl_msg

    def setupUi(loginFrame)
    if loginFrame.objectName.nil?
        loginFrame.objectName = "loginFrame"
    end
    loginFrame.resize(424, 249)
    loginFrame.frameShape = Qt::Frame::StyledPanel
    loginFrame.frameShadow = Qt::Frame::Raised
    @btn_login = Qt::PushButton.new(loginFrame)
    @btn_login.objectName = "btn_login"
    @btn_login.geometry = Qt::Rect.new(160, 200, 97, 31)
    @btn_close = Qt::PushButton.new(loginFrame)
    @btn_close.objectName = "btn_close"
    @btn_close.geometry = Qt::Rect.new(270, 200, 97, 31)
    @label = Qt::Label.new(loginFrame)
    @label.objectName = "label"
    @label.geometry = Qt::Rect.new(20, 80, 91, 21)
    @label_2 = Qt::Label.new(loginFrame)
    @label_2.objectName = "label_2"
    @label_2.geometry = Qt::Rect.new(30, 140, 65, 21)
    @txt_user_name = Qt::LineEdit.new(loginFrame)
    @txt_user_name.objectName = "txt_user_name"
    @txt_user_name.geometry = Qt::Rect.new(100, 70, 271, 33)
    @txt_password = Qt::LineEdit.new(loginFrame)
    @txt_password.objectName = "txt_password"
    @txt_password.geometry = Qt::Rect.new(100, 130, 271, 33)
    @txt_password.echoMode = Qt::LineEdit::Password
    @label_3 = Qt::Label.new(loginFrame)
    @label_3.objectName = "label_3"
    @label_3.geometry = Qt::Rect.new(20, 20, 431, 21)
    @lbl_msg = Qt::Label.new(loginFrame)
    @lbl_msg.objectName = "lbl_msg"
    @lbl_msg.geometry = Qt::Rect.new(170, 170, 211, 21)
    @palette = Qt::Palette.new
    brush = Qt::Brush.new(Qt::Color.new(255, 0, 0, 255))
    brush.style = Qt::SolidPattern
    @palette.setBrush(Qt::Palette::Active, Qt::Palette::WindowText, brush)
    @palette.setBrush(Qt::Palette::Inactive, Qt::Palette::WindowText, brush)
    brush1 = Qt::Brush.new(Qt::Color.new(143, 146, 147, 255))
    brush1.style = Qt::SolidPattern
    @palette.setBrush(Qt::Palette::Disabled, Qt::Palette::WindowText, brush1)
    @lbl_msg.palette = @palette
    btn_login.raise()
    btn_close.raise()
    label.raise()
    label_2.raise()
    txt_user_name.raise()
    label_3.raise()
    txt_password.raise()
    lbl_msg.raise()

    retranslateUi(loginFrame)
    Qt::Object.connect(@btn_close, SIGNAL('clicked()'), loginFrame, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(loginFrame)
    end # setupUi

    def setup_ui(loginFrame)
        setupUi(loginFrame)
    end

    def retranslateUi(loginFrame)
    loginFrame.windowTitle = Qt::Application.translate("LoginFrame", "TSMS Login", nil, Qt::Application::UnicodeUTF8)
    @btn_login.text = Qt::Application.translate("LoginFrame", "Login", nil, Qt::Application::UnicodeUTF8)
    @btn_close.text = Qt::Application.translate("LoginFrame", "Exit", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("LoginFrame", "User Name", nil, Qt::Application::UnicodeUTF8)
    @label_2.text = Qt::Application.translate("LoginFrame", "Password", nil, Qt::Application::UnicodeUTF8)
    @txt_password.inputMask = ''
    @txt_password.placeholderText = ''
    @label_3.text = Qt::Application.translate("LoginFrame", "TSMS User Login.Please exit if you are not autorized!", nil, Qt::Application::UnicodeUTF8)
    @lbl_msg.text = Qt::Application.translate("LoginFrame", "Invalid User Name or password!", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(loginFrame)
        retranslateUi(loginFrame)
    end

end

module Ui
    class LoginFrame < Ui_LoginFrame
    end
end  # module Ui

