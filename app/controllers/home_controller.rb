class HomeController < ApplicationController
   
   def index
      me = @graph.get_object("me")

   end
end
