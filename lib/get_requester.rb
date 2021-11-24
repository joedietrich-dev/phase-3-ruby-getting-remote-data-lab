require 'net/http'

class GetRequester
  attr_reader :uri

  def initialize(url)
    @uri = URI(url)
  end

  def get_response_body
    res = Net::HTTP.get_response(@uri)
    res.body
  end

  def parse_json
    JSON.parse get_response_body
  end
end