class EntriesController < ApplicationController
  def index
    # show all of the posts that are relevant to the city selected
    @entries_rend = Entry.where({"place_id" => params["id"]})
  end

  def new
    # render the new posts for a certain location
  end

  def create
    @entry_new = Entry.new( 
      title: params["title"],
      description: params["description"],
      occurred_on: params["occurred_on"],
      place_id: @place_id
    )
    @entry_new.save
    redirect_to "/entries/"
  end
end
