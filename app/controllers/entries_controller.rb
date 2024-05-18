class EntriesController < ApplicationController

def show
  @entry = entry.find_by({"name" => params[name]})
  @places = place.find_by({"place" => @entry["place_id"]}) 
end

def new 
  @place = Place.find_by({"name" => params ["place_id"]})
end

def create
  @entry = Entry.new

  @entry["name"] = params ["name"]
  @entry["list"] = params ["list"]

  @entry ["place_id"] = params ["place_id"]

  @entry.save
  redirect_to "/places/#{@place["place_id"]}"
end

end