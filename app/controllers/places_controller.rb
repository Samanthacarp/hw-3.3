class PlacesController < ApplicationController

def index
  # render :template => "places/index"
  @places = Place.all
end

def show
  @place = Place.find_by({ "id" => params["id"] })
  @entries = Entry.where({ "place_id" => @place["id"] })
end

def new
  @place = Place.new
end

def create
  @place = Place.new
  @place["name"] = params["name"]
  @place["created_at"] = params["created_at"]
  @place.save

  redirect_to "/places"
end

end



