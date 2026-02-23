class EntriesController < ApplicationController
  def index
    # show all of the posts that are relevant to the city selected
  end

  def new
    # render the new posts for a certain location
    @place_id = params["place_id"]
    @place_name = Place.find_by({"id" => params["place_id"]})["name"]
  end

  def create
    @entry_new = Entry.new( 
      title: params["title"],
      description: params["description"],
      occurred_on: params["occurred_on"],
      place_id: params["place_id"]
    )
    @entry_new.save
    redirect_to "/places/#{@place_id}"
  end
end
