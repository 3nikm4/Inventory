class DeviceLocation < ActiveRecord::Base
  belongs_to :device
  belongs_to :location
end
