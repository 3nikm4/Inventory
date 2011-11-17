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
  has_many :device_locations
  
  accepts_nested_attributes_for :device_locations, :location_type, :practice, :location_alert_contacts
end
