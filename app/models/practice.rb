class Practice < ActiveRecord::Base
  validates :practice_name, :presence => true
  
  has_many :locations
  accepts_nested_attributes_for :locations, :reject_if => lambda { |a| a[:location_name].blank? }, :allow_destroy => true
end
