require './ui_save_location'
require './wscon'
class SaveLocation < Qt::Frame
  
  def initialize(location = nil,prevForm = nil ,parent = nil)
  	super(parent)

  	@prevForm = prevForm
  	@ui = Ui::SaveLocationFrame.new
    @ui.setup_ui(self)
    @ui.btn_save.connect(SIGNAL :clicked){save_location}

    fill_data location if prevForm != nil
  end

  def save_location
    location = @ui.txt_location.text
    distance = @ui.spn_distance.value
    rate = @ui.spn_rate.value

    begin
      client = WsCon::client
      if @id == nil then
        client.call(:create_location,message: {arg0:{name: location,distance: distance,rate: rate}})
      else
        client.call(:edit_location,message: {arg0:{id: @id,name: location,distance: distance,rate: rate}})
      end
      Qt::MessageBox.information self,"information","Location Successfully Saved!"
      @prevForm.load_data if @prevForm != nil	
      self.close
    rescue => e
      Qt::MessageBox.information self,"Error","Failed to Save Location!"
      puts e
    end
  end

  def fill_data location
    @id = location[:id]
    @ui.txt_location.text = location[:name]
    @ui.spn_distance.value = location[:distance]
    @ui.spn_rate.value = location[:rate]
  end

end
