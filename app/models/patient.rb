class Patient < ActiveRecord::Base
  validates :location_id, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :address_street1, :presence => true
  validates :address_city, :presence => true
  validates :address_state, :presence => true
  validates :address_zip, :presence => true
  validates :dob, :presence => true
  
  belongs_to :location
  belongs_to :device_location
  
  #for use to make patient name easy
  def patient_full_name
    first_name + " " + last_name
  end
end
