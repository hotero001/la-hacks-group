class LoginController < ApplicationController
   before_filter :parse_facebook_cookies

   def parse_facebook_cookies
      @facebook_cookies ||= Koala::Facebook::OAuth.new.get_user_info_from_cookie(cookies)
   end
   
   def index
      @access_token = @facebook_cookies["access_token"]
      @graph = Koala::Facebook::GraphAPI.new(@access_token)
   end

   def show
   end
end
