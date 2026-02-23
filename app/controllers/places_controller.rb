class PlacesController < ApplicationController
  def index
    #find all the places that have been created
    @places = Place.all
  end
end
