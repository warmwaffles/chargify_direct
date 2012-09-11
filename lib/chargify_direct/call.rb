require 'hashie'
require 'rest_client'

module ChargifyDirect

  # The call that chargify returns
  #
  # @author Matthew A. Johnston <warmwaffles@gmail.com>
  class Call
    attr_accessor :data

    def initialize data
      @data = data
    end

    # @return [Boolean] True if the call is successful else false
    def successful?
      @data.success
    rescue
      false
    end

    # returns the errors that the call has on it
    def errors
      @data.response.result.errors
    rescue
      Array.new
    end

    # Gets a call from chargify's API
    #
    # @return [ChargifyDirect::Call]
    def self.get id
      uri      = "#{ChargifyDirect::Base.base_uri}/calls"
      client   = RestClient::Resource.new(uri, :user => ChargifyDirect::Base.api_id, :password => ChargifyDirect::Base.api_password)
      response = Hashie::Mash.new(JSON.parse(client[id].get))
      Call.new(response.call)
    end
  end

end
