class Ability
  include CanCan::Ability
  
#  user ||= User.new # anonymous user
  
  def initialize(user)
    if user.role?("Admin")
      can :manage, :all
      
    elsif user.role?("Staff")
      #read
      can :read, :all

      #create
      can :create, @device
      can :create, @device_problem
      can :create, @device_location
      can :create, @device_type
      can :create, @disposable
      can :create, @disposable_type
      can :create, @device_status
      can :create, @location
      can :create, @location_type
      can :create, @patient
      can :create, @practice
      # update
      can :update, Device
      can :update, DeviceProblem
      can :update, DeviceLocation
      can :update, DeviceType
      can :update, Disposable
      can :update, DisposableType
      can :update, DeviceStatus
      can :update, Location
      can :update, LocationType
      can :update, Patient
      can :update, Practice
      #destroy
      can :destroy, Device
      can :destroy, DeviceProblem
      can :destroy, DeviceLocation
      can :destroy, DeviceType
      can :destroy, Disposable
      can :destroy, DisposableType
      can :destroy, DeviceStatus
      can :destroy, Location
      can :destroy, LocationType
      can :destroy, Patient
      can :destroy, Practice

    else
      can :read, Device
      can :read, DeviceProblem
      can :read, DeviceLocation
      can :read, DeviceType
      can :read, Disposable
      can :read, DisposableType
      can :read, DeviceStatus
      can :read, Location
      can :read, LocationType
      can :read, Patient
      can :read, Practice
    end
  end

end
