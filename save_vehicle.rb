require './ui_save_vehicle'
require './wscon'
require 'date'

class SaveVehicle < Qt::Frame

  

  def initialize(vehicle = nil ,prevForm = nil,parent = nil)
    super(parent)
    @prevForm = prevForm
    @ui = Ui::AddVehicleFrame.new
    @ui.setup_ui(self)
    @ui.btn_save.connect(SIGNAL :clicked){save_vehicle}
    @client = WsCon::client
    response = @client.call(:find_supplier_entites)
    r = response.to_hash[:find_supplier_entites_response][:return]
    @suppliers = r[:suppliers]
    @suppliers.each{|supplier| @ui.cmb_supplier.addItem(supplier[:name])}

    fill_data vehicle if vehicle != nil
  end

  def save_vehicle
    number = @ui.txt_vehicle_no.text
    model = @ui.txt_model.text
    color = @ui.txt_color.text
    seat_capacity = @ui.spn_seats.value.to_s
    insuranced = @ui.dt_insurance.date
    licenced = @ui.dt_licence.date
    si = @ui.cmb_supplier.currentIndex    
    supplier = @suppliers[si]
    insurance = Date.new(insuranced.year,insuranced.month,insuranced.day) 
    licence =Date.new(licenced.year,licenced.month,licenced.day)
    
    
    begin
      if @id == nil then 
        @client.call(:create_vehicle,message:{arg0:{number: number,model: model,color: color,seat_capacity: seat_capacity,insurance_expiryDate: insurance,licence_expiry_date: licence ,supplier: supplier }})
      else  
        @client.call(:edit_vehicle,message:{arg0:{id: @id,number: number,model: model,color: color,seat_capacity: seat_capacity,insurance_expiryDate: insurance,licence_expiry_date: licence ,supplier: supplier}})
        
      end
      Qt::MessageBox.information self,'Information','Vehicle Saved Successfully!'
  	  @prevForm.load_data if @prevForm != nil
  	  self.close
    rescue => e
      Qt::MessageBox.information self,'Error','Error Saving Vehicle!'
      puts ''
      puts "the error --------------------------------\n\n"
      puts e
    end
 
   
  end

  def fill_data vehicle
    @id = vehicle[:id]
    @ui.txt_vehicle_no.text = vehicle[:number]
    @ui.txt_model.text = vehicle[:model]
    @ui.txt_color.text = vehicle[:color]
    @ui.spn_seats.value = vehicle[:seat_capacity]
    #@ui.dt_insurance.date = vehicle[:insurance_expiry_date]
    #@ui.dt_licence.date = vehicle[:licence_expiry_date]
    #si = @ui.cmb_supplier.currentIndex
  end

end


#:vehicles=>{:color=>"BLACK", :id=>"1", :insurance_expiry_date=>#<DateTime: 2014-02-02T00:00:00+05:30 ((2456690j,66600s,0n),+19800s,2299161j)>, :licence_expiry_date=>#<DateTime: 2014-02-02T00:00:00+05:30 ((2456690j,66600s,0n),+19800s,2299161j)>, :model=>"KIWI", :number=>"23232", :seat_capacity=>"4", :supplier=>sup}