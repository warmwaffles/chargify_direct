module ChargifyDirect

  # @author Matthew A. Johnston <warmwaffles@gmail.com>
  class Base
    class << self
      attr_accessor :api_id
      attr_accessor :api_password
      attr_accessor :api_secret

      def base_uri
        'https://api.chargify.com/api/v2'
      end
    end

  end

end
