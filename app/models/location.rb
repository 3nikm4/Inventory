class Location < ActiveRecord::Base
  validates :location_type_id, :presence => true
  validates :location_name, :presence => true
  validates :location_street1, :presence => true
  validates :location_city, :presence => true
  validates :location_state, :presence => true
  validates :location_zip, :presence => true
  validates :location_contact, :presence => true
  validates :par_level_event, :presence => true
  validates :par_level_mct, :presence => true
  validates :alert_amount, :presence => true
  
  belongs_to :location_type
  belongs_to :practice
  has_many :location_alert_contacts, :dependent => :destroy
<<<<<<< HEAD
  has_many :location_assignments
  has_many :device_locations
  has_many :devices, :through => :device_locations
  has_many :patients
  has_many :patient_assignments, :through => :patients
  
  accepts_nested_attributes_for :location_alert_contacts, :patient_assignments
  
  def active_device_locations
    device_locations.where( :active => 1 )
  end
  
  def active_devices
    device_locations.first.location.devices
  end

  def active_patients
    patients.all
  end
  
  def devices_count
    active_devices.count
  end
  
  def get_patients
    patients.all
  end
  
  def get_devices
    active_devices.all
  end

  def mct_devices
    active_devices.where( :device_type_id => 1 )
  end
  
  def event_devices
    active_devices.where( :device_type_id => 2 )
  end
  
  def mct_count
    mct_devices.count
  end
  
  def event_count
    event_devices.count
  end

=======
  has_many :device_locations
  
  accepts_nested_attributes_for :device_locations, :location_type, :practice, :location_alert_contacts
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408
end
