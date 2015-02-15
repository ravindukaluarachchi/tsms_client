require './ui_login'
require './Tu'

class Login < Qt::Frame

  def initialize parent=nil
   super parent
   @ui = Ui::LoginFrame.new
   @ui.setup_ui self
   @ui.lbl_msg.text = "";
   @ui.btn_login.connect(SIGNAL :clicked){login}
  end


  def login
    user_name = @ui.txt_user_name.text
    password = @ui.txt_password.text
    if user_name == "kermit" && password == "kermit" then
      Tu.new.show
      self.close
    else
      @ui.lbl_msg.text = "Invalid User Name or password!"
    end
  end

end
