class Device < ActiveRecord::Base
  validates :device_type_id, :presence => true
  validates :device_status_id, :presence => true
  validates :serial_number, :presence => true

  belongs_to :device_type
  belongs_to :device_status
  has_many :device_test, :dependent => :destroy
  has_many :device_location, :dependent => :destroy
  has_many :device_problem_statuses, :through => :device_problem
  has_many :device_problems, :order => 'created_at DESC', :dependent => :destroy
  has_many :audits, :dependent => :destroy
  has_many :patients
  has_many :patient_assignments, :through => :patients

  accepts_nested_attributes_for :device_problems, :device_location, :device_test, :allow_destroy => true
end
