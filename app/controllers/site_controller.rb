class SiteController < ApplicationController

  def index
  end

  def comodidades
    @amenities = Amenity.all
    if params[:filtro]
      @places = Place.joins(:amenities).where("amenities.name = ?", params[:filtro].join(','))
    else
      @places = Place.all
    end
  end

  def landing
    @amenities = Amenity.all
    @place = Place.friendly.find(params[:id])
  end

end