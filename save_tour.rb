require './ui_save_tour'
require './wscon'

class SaveTour < Qt::Frame
  
  def initialize tour = nil ,prevForm = nil,parent = nil
  	super parent
  	@ui = Ui::SaveTourFrame.new
    @ui.setup_ui(self)
    @ui.btn_save.connect(SIGNAL :clicked){save_tour}

    @client = WsCon::client
    
    rsv = @client.call(:find_vehicle_entites)
    rsv = rsv.to_hash[:find_vehicle_entites_response][:return]
    @vehicles = rsv[:vehicles]
    @vehicles.each{|vehicle|  @ui.cmb_vehicle.addItem(vehicle[:number])}

    rsc = @client.call(:find_customer_entites)
    rsc = rsc.to_hash[:find_customer_entites_response][:return]
    @customers = rsc[:customers]
    @customers.each{|customer|  @ui.cmb_customer.addItem(customer[:name])}


    rsl = @client.call(:find_locations)
    rsl = rsl.to_hash[:find_locations_response][:return]
    @locations = rsl[:locations]
    @locations.each{|location|  @ui.cmb_location.addItem(location[:name])}

    rsd = @client.call(:find_driver_entites)
    rsd = rsd.to_hash[:find_driver_entites_response][:return]
    @drivers = rsd[:drivers]
    @drivers.each{|driver|  @ui.cmb_driver.addItem(driver[:first_name] + " " + driver[:last_name])}
    #driver[:first_name] + " " + driver[:first_name]
    fill_data tour if tour != nil
  end

  def save_tour

    location = @locations[@ui.cmb_location.currentIndex]
    distance = @ui.spn_distance.value
    start_meter = @ui.spn_start_meter.value
    end_meter = @ui.spn_end_meter.value
  
  	sd =  @ui.spn_start_date.date
    start_date = Date.new(sd.year,sd.month,sd.day) 
    no_of_days = @ui.spn_nod.value

    st = @ui.spn_start_time.time    
    start_time = Time.new(sd.year,sd.month,sd.day,st.hour,st.minute,st.second) 

    et = @ui.spn_end_time.time
    end_time = Time.new(sd.year,sd.month,sd.day,et.hour,et.minute,et.second) 

    customer = @customers[@ui.cmb_customer.currentIndex]
    rate = @ui.spn_rate.value
 
    vehicle = @vehicles[@ui.cmb_vehicle.currentIndex]

    driver = @drivers[@ui.cmb_driver.currentIndex]
    status = @ui.spn_status.currentIndex
    
    begin    
    	if @id == nil then    
    	  @client.call(:create_tour,message:{arg0: {:location => location,:distance => distance,:start_meter => start_meter,:end_meter => end_meter,:start_date => start_date,:no_of_days => no_of_days,:start_time => start_time,:end_time => end_time,:customer => customer,:rate => rate,:vehicle => vehicle,:driver => driver,:status => status}})
    	else
    	  @client.call(:create_tour,message:{arg0: {:id => @id,:location => location,:distance => distance,:start_meter => start_meter,:end_meter => end_meter,:start_date => start_date,:no_of_days => no_of_days,:start_time => start_time,:end_time => end_time,:customer => customer,:rate => rate,:vehicle => vehicle,:driver => driver,:status => status}})
    	end
    	Qt::MessageBox.information self,'Information','Tour Saved Successfully!'
    	@prevForm.load_data if @prevForm != nil
    	self.close
    rescue => e
    	puts e
    	Qt::MessageBox.information self,'Error','Saving Tour Failed!'
    end
    

  end

  def fill_data tour
    puts "********************************************************"
    puts "fill data method  #{tour}" 
    puts "********************************************************"
    @id = tour[:id]

    index = 0
    i = 0
    @customers.each{|c|
      puts "c[:id] == tour[:customer][:id] #{c[:id]} == #{tour[:customer][:id]}"
      if c[:id] == tour[:customer][:id] then
        puts "matched"
        index = i
      end
      i = i + 1
    }
    puts "index is #{index}"
   # location = @locations[@ui.cmb_location.currentIndex]
    customer = @customers[i]
    puts customer
    @ui.cmb_customer.currentIndex = i
   #vehicle = @vehicles[@ui.cmb_vehicle.currentIndex]
    #driver = @drivers[@ui.cmb_driver.currentIndex]

    @ui.spn_distance.value = tour[:distance]
    @ui.spn_start_meter.value = tour[:start_meter]
    @ui.spn_end_meter.value = tour[:end_meter]
  
    @ui.spn_start_date.date = tour[:start_date].to_s
    #start_date = Date.new(sd.year,sd.month,sd.day) 
    
    @ui.spn_nod.value = tour[:no_of_days]

    #@ui.spn_start_time.time = tour[:start_time]   
    #start_time = Time.new(sd.year,sd.month,sd.day,st.hour,st.minute,st.second) 

    #@ui.spn_end_time.time = tour[:end_time]
    #end_time = Time.new(sd.year,sd.month,sd.day,et.hour,et.minute,et.second) 

    
    @ui.spn_rate.value = tour[:rate]
 
    
    @ui.spn_status.currentIndex = tour[:status]
  end
end
