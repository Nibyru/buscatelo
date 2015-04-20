class SiteController < ApplicationController

  def index
  end

  def comodidades
    @amenities = Amenity.all
    @places = Place.all
  end

  def landing
    @amenities = Amenity.all
    @place = Place.friendly.find(params[:id])
  end

end