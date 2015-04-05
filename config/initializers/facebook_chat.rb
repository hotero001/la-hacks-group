require 'facebook_chat'

FacebookChat::Client.configure do |config|
   config.api_key = <%= Facebook::APP_ID %>
   config.host = 'chat.facebook.com'
end
