require './ui_confirm_tour_request'
require './wscon'

class ConfirmTourRequest <  Qt::Frame


  def initialize(tour,parent=nil)
    super(parent)
    @ui = Ui::TourRequestConfirmFrame.new
    @ui.setup_ui(self)
    @ui.btn_confirm.connect(SIGNAL :clicked){confirm}
    @ui.btn_reject.connect(SIGNAL :clicked){reject}
    puts "ui is #{@ui}"
    puts "no of days is #{@ui.lbl_no_of_days}"
 
    @tour = tour

    if tour != nil then
      @ui.lbl_no_of_days.text = tour[:no_of_days] 
      @ui.lbl_customer_name.text = tour[:customer][:name]
      @ui.lbl_location.text = tour[:location][:name]
      puts tour[:start_time]
      sd =  tour[:start_date]
      start_date = tour[:start_date].to_s #Date.new(sd.year,sd.month,sd.day) 
      st = tour[:start_time]    
      start_time = tour[:start_time].to_s #Time.new(sd.year,sd.month,sd.day,st.hour,st.minute,st.second) 
      @ui.lbl_time.text = start_time
      @ui.lbl_date.text = start_date      
    end
    
    @client = WsCon::client
    response = @client.call(:find_driver_entites)
    r = response.to_hash[:find_driver_entites_response][:return]
    @drivers = r[:drivers]
    @drivers.each{|driver|  @ui.cmb_driver.addItem(driver[:first_name] + " " + driver[:last_name])}

    rsv = @client.call(:find_vehicle_entites)
    rsv = rsv.to_hash[:find_vehicle_entites_response][:return]
    @vehicles = rsv[:vehicles]
    @vehicles.each{|vehicle|  @ui.cmb_vehicle.addItem(vehicle[:number])}
  end

  def confirm
    driver = @drivers[@ui.cmb_driver.currentIndex]
    vehicle = @vehicles[@ui.cmb_vehicle.currentIndex]
    @tour[:driver] = driver
    @tour[:vehicle] = vehicle
    @tour[:status] = 1
    @client.call(:edit_tour,message: {arg0: @tour})    
    self.close
  end

  def reject
    self.close
  end

  

end
