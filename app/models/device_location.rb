class DeviceLocation < ActiveRecord::Base
  belongs_to :device
  belongs_to :location
<<<<<<< HEAD
=======
  has_one :patient
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408
end
