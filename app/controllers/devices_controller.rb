class DevicesController < ApplicationController
  def index
    @devices = Devices.find
  end
end
