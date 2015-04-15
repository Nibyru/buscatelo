class Admin::AdminController < ApplicationController
	before_action :authenticate_admin!
  layout 'admin'
	
	def dashboard
    @prices = Price.limit(5)
    @places = Place.limit(10)
    @amenities = Amenity.limit(5)
	end
end