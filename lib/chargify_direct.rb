require "chargify_direct/version"
require "chargify_direct/config"

# @author Matthew A. Johnston <warmwaffles@gmail.com>
module ChargifyDirect
  def self.verified? params
  end

  def self.read call_id
  end
end

ChargifyDirect.verified?(params)
ChargifyDirect.read(params[:call_id])

if @chargify.direct.response_parameters(params).verified?
  @call = @chargify.calls.read(params[:call_id])
