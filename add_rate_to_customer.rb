require './ui_add_rate_to_customer'
require './wscon'
class AddRateToCustomer < Qt::Frame



  def initialize customer = nil ,prevFrame = nil,parent = nil
    super parent
    @ui = Ui::AddCustomerRateFrame.new
    @ui.setup_ui self
    @prevFrame = prevFrame
    @customer = customer	
    @client = WsCon::client
    

    @ui.btn_add.connect(SIGNAL :clicked){add_customer_rate}
    @locations =@client.call(:find_locations).to_hash[:find_locations_response][:return][:locations]
    
    @locations.each{|l| @ui.cmb_location.addItem(l[:name])}
   
  end

  def add_customer_rate
    customer_id = @customer[:id]
    location_id = @locations[@ui.cmb_location.currentIndex][:id] 
    rate = @ui.spn_rate.value
    @client.call(:add_location_to_customer,message:{arg0: customer_id ,arg1: location_id ,arg2: rate})
    @prevFrame.fill_location_data
    self.close()
  end

 
end
