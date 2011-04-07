require 'rubygems'
require 'simplegeo'

oauth_key = "Nv3W3AUEf8ujMxvUsS83MuYswVsKPURv"
oauth_secret = "SfPxuhH6umecvvbMDHWTs7y9mngfG4jn"
p SimpleGeo::Client.set_credentials(oauth_key, oauth_secret)
