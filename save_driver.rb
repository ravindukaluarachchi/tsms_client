require './ui_save_driver.rb'
require 'savon'

class SaveDriver < Qt::Frame
  def initialize(driver = nil,prevForm = nil,parent = nil)
    super(parent)
    @prevForm = prevForm
	@client = Savon.client(wsdl: 'http://localhost:8084/TsmsServer/WS?wsdl')

    @ui = Ui::Frame.new
    @ui.setup_ui(self)

    @ui.cmb_title.addItem('Mr')
    @ui.cmb_title.addItem('Ms')

    @ui.cmb_sex.addItem('Male')
    @ui.cmb_sex.addItem('Female')

    @ui.cmb_status.addItem('Single')
    @ui.cmb_status.addItem('Married')
    bgs = ['A+','A-','B+','B-','AB+','AB-','O+','O-']
    @ui.cmb_blood_group.addItems(bgs)
    @ui.btn_save.connect(SIGNAL :clicked){create_driver}
    fill_form driver if driver != nil
    	
    
  end

  def create_driver
  	nic = @ui.text_nic.text
  	first_name = @ui.text_first_name.text
    last_name = @ui.txt_last_name.text
    telephone1 = @ui.text_telephone1.text    
    country1 = @ui.text_country.text    
    city1 = @ui.text_city.text
    mobile1 = @ui.txt_mobile1.text   
    mobile2 = @ui.text_mobile2.text
    telephone2 = @ui.text_telephone2.text
    city2 = @ui.text_city2.text
    country2 = @ui.text_country2.text
    address1 = @ui.text_address1.plainText
    address2 = @ui.text_address2.plainText    
    emergency_name = @ui.txt_emergency_name.text
    emergency_relationship = @ui.text_emergency_relationship.text
    emergency_number = @ui.text_emergency_number.text    
    experience = @ui.txt_experience.plainText
    title = @ui.cmb_title.currentText.to_s
    licence_number = @ui.txt_licence.text
    sex = @ui.cmb_sex.currentText.to_s
    status = @ui.cmb_status.currentText.to_s
    blood_group = @ui.cmb_blood_group.currentText.to_s 
    #@client.call(:find_driver)
    begin
      @client.call(:create_driver,message:{arg0: {:address1=>address1, :address2=>address2, :blood_group=>blood_group, :city1=>city1, :city2=>city2, :country1=>country1, :country2=>country2, :emergencey_contact_name=>emergency_name, :emergencey_contact_number=>emergency_number, :emergencey_contact_relationship=>emergency_relationship, :experience=>experience, :first_name=>first_name, :last_name=>last_name, :licence_number=>licence_number, :martial_status=>status, :mobile=>mobile1, :mobile2=>mobile2, :nic=>nic , :sex=>sex, :telephone1=>telephone1, :telephone2=>telephone2, :title=> title}})
      #@client.call(:create_driver,message:{arg0: {:address1=>"address1", :address2=>"address2", :blood_group=>"blood_group", :city1=>"city1", :city2=>"city2", :country1=>"country1", :country2=>"country2", :emergencey_contact_name=>"emergency_name", :emergencey_contact_number=>"123456789", :emergencey_contact_relationship=>"emergency_relationship", :experience=>"experience", :first_name=>"first_name", :last_name=>"last_name", :licence_number=>"23232", :martial_status=>"status", :mobile=>"123456789", :mobile2=>"123456789", :nic=>"1233455v" , :sex=>"sex", :telephone1=>"123456789", :telephone2=>"123456789", :title=> "title"}})
      Qt::MessageBox.information self, "Information", "Driver Saved Successfully !."
      self.close
	rescue
      Qt::MessageBox.information self, "Information", "Failed to save Driver !."
	end
	@prevForm.load_data if @prevForm != nil 
		
  end

  def fill_form(driver)
	@ui.text_nic.text = driver[:nic] 
  	@ui.text_first_name.text = driver[:first_name] 
    @ui.txt_last_name.text = driver[:last_name] 
    @ui.text_telephone1.text = driver[:telephone1]     
    @ui.text_country.text = driver[:country1]    
    @ui.text_city.text = driver[:city1] 
    @ui.txt_mobile1.text = driver[:mobile1]  
    @ui.text_mobile2.text = driver[:mobile2] 
    @ui.text_telephone2.text = driver[:telephone2]
    @ui.text_city2.text = driver[:city2] 
    @ui.text_country2.text = driver[:country2]
    @ui.text_address1.plainText = driver[:address1] 
    @ui.text_address2.plainText = driver[:address2] 
    @ui.txt_emergency_name.text = driver[:emergency_name]
    @ui.text_emergency_relationship.text = driver[:emergency_relationship] 
    @ui.text_emergency_number.text = driver[:emergency_number]    
    @ui.txt_experience.plainText = driver[:experience] 
    @ui.cmb_title.currentText = driver[:title] 
    @ui.txt_licence.text = driver[:licence_number]
    @ui.cmb_sex.currentText = driver[:sex]
    @ui.cmb_status.currentText = driver[:status] 
    @ui.cmb_blood_group.currentText = driver[:blood_group] 
  end
end