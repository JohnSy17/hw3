class PlacesController < ApplicationController
  def index
    #find all the places that have been created
    @places = Place.all
  end

  def new
    # render places/new view new place form
  end

  def show
    # identify place based on selection then render entries
    @place_info = Place.find_by({"id" => params["id"]})
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
