class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize_simplegeo
    oauth_key = "ALpugQGGGvBv5ZwhYb4CL2Bensxtdy2M"
    oauth_secret = "gRFJuQLsLmps2RxUBu6H7yLEZvtxArqJ"
    SimpleGeo::Client.set_credentials(oauth_key, oauth_secret)
  end
end
