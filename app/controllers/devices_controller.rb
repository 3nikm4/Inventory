class DevicesController < ApplicationController
  load_and_authorize_resource

  # GET /devices
  # GET /devices.json
  def index
<<<<<<< HEAD
    @devices = Device.order("serial_number").page(params[:page]).per(25)
    
=======
    @devices = Device.order("serial_number").page(params[:page]).per(20)

>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devices }
    end
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
    @device = Device.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @device }
    end
  end

  # GET /devices/new
  # GET /devices/new.json
  def new
    @device = Device.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @device }
    end
  end

  # GET /devices/1/edit
  def edit
    @device = Device.find(params[:id])
  end

  # POST /devices
  # POST /devices.json
  def create
    @device = Device.new(params[:device])

    respond_to do |format|
      if @device.save
        format.html { redirect_to @device, notice: 'Device was successfully created.' }
        format.json { render json: @device, status: :created, location: @device }
      else
        format.html { render action: "new" }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devices/1
  # PUT /devices/1.json
  def update
    @device = Device.find(params[:id])

    respond_to do |format|
      if @device.update_attributes(params[:device])
        format.html { redirect_to @device, notice: 'Device was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @device = Device.find(params[:id])
    @device.destroy

    respond_to do |format|
      format.html { redirect_to devices_url }
      format.json { head :ok }
    end
  end
<<<<<<< HEAD
  
  # GET /devices/global
  def global
    @mct = Device.where("device_type_id = ?", 1).count
    @event = Device.where("device_type_id = ?", 2).count  
  end
  
  # pulls a selec
  def location_selection
    @selection = DeviceLocations.find( :all, :conditions => [" location_id = ?", params[:id]] )
  end
=======
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408
end
