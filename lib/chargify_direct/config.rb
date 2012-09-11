module ChargifyDirect
  # @author Matthew A. Johnston <warmwaffles@gmail.com>
  class Config
    class << self
      attr_accessor :api_id
      attr_accessor :api_password
      attr_accessor :api_secret
      attr_accessor :base_uri
    end
  end
end
