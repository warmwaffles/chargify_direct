module ChargifyDirect
  # @author Matthew A. Johnston <warmwaffles@gmail.com>
  class Parameters
    attr_reader :timestamp
    attr_reader :nonce
    attr_reader :data

    def initialize params={}
      @timestamp
    end

    def self.signature(message, secret)
      OpenSSL::HMAC.hexdigest(OpenSSL::Digest::Digest.new('sha1'), secret, message)
    end

    def self.verified? params
      # TODO: actually implement this
      # message = [
      #   params[:api_id],
      #   params[:timestamp],
      #   params[:nonce],
      #   params[:status_code],
      #   params[:status_code],
      #   params[:result_code],
      #   params[:call_id]
      # ].join('')
      true
    end
  end
end
