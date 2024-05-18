class EntriesController < ApplicationController

  def index
   # render :template => "entry/index"
    @entries = Entry.all
  end

def show
  @entry = entry.find_by({"name" => params[name]})
  @places = place.find_by({"place" => @entry["place_id"]}) 
end

def new 
  @place = Place.find_by({ "id" => params["place_id"] })
end

def create
  @entry = Entry.new

  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["posted_on"] = params["posted_on"]
  @entry ["created_at"] = params ["created_at"]
  @entry ["updated_at"] = params ["updated_at"]

@entry["place_id"] = params ["place_id"]

  @entry.save
  redirect_to "/places/#{@place["place_id"]}"
end

end