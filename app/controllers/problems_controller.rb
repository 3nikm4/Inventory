class ProblemsController < ApplicationController
  load_and_authorize_resource
  
  # GET problems/unsolved
  def index
    @devices = Device.where("device_status_id = ?", 3).includes(:device_status)
  end
  
  # GET problems/solved
  def solved
    @devices = Device.DeviceProblem.DeviceProblemStatus.find_all_by_device_problem_status("Unsolved")
  end

end
