class EntriesController < ApplicationController
  def index
    # show all of the posts that are relevant to the city selected
    @entries_rend = Entry.find_by({"place_id" => params["id"]})
  end

  def new
    # render the new posts for a certain location
  end

  def create
    #allow for creation of a new entry
  end
end
