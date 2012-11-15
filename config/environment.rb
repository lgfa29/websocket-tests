# Load the rails application
require File.expand_path('../application', __FILE__)

require 'pusher'
Pusher.app_id = '31725'
Pusher.key = 'a92bf0db125a3639b1ef'
Pusher.secret = 'e8f99fb07eb38779393a'

# Initialize the rails application
RealtimeChat::Application.initialize!
