require 'Qt4'
require './login'

a = Qt::Application.new(ARGV)
s = Login.new
s.show
a.exec	




 #   a = Qt::Application.new(ARGV)
  #  u = Ui_MainWindow.new
  #  w = Qt::MainWindow.new
#    u.setupUi(w)
  #  w.show
  #  a.exec

