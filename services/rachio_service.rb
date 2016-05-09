class RachioService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "https://api.rach.io/1/public/")
    connection.headers['Authorization'] = "Bearer #{ENV['rachio_key']}"
    connection.headers['Content-Type'] = "application/json"
  end

  def personal_info
      parse(connection.get("person/info"))
  end

  private

    def parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end
