class Devices
  def self.service
    RachioService.new
  end

  def self.find
    service.personal_info[:devices].map do |device|
      build_open_struct_object(device)
    end
  end

  private

  def self.build_open_struct_object(data)
    OpenStruct.new(data)
  end
end
