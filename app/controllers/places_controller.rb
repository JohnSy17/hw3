class PlacesController < ApplicationController
  def index
    #find all the places that have been created
    @places = Place.all
  end

  def new
    # render places/new view new place form
  end

  def show
    # capture information that will then re-direct to the appropriate entries page
    @place_name = Place.find_by({"id" => params["id"]})["name"]
    redirect_to "/entries/"
  end

  #Creates a new place that can be added to the list
  def create
    @place_new = Place.new( 
      name: params["name"]
    )
    @place_new.save
    redirect_to "/"
  end
  
end
