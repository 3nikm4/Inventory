class Practice < ActiveRecord::Base
  validates :practice_name, :presence => true
  
  has_many :locations
<<<<<<< HEAD
  has_many :patients, :through => :locations
  has_many :devices, :through => :patients
  has_many :patient_assignments, :through => :patients
  
  accepts_nested_attributes_for :locations, :patients, :devices, :patient_assignments
=======
  accepts_nested_attributes_for :locations, :reject_if => lambda { |a| a[:location_name].blank? }, :allow_destroy => true
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408
end
