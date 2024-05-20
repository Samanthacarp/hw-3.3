class EntriesController < ApplicationController
 
 def show
   @entry = entry.find_by({"id" => params[id]})
   @places = place.find_by({"id" => @entry["place_id"]}) 
 end
 
 def new 
   @entry = Entry.new
   @entry["place_id"] = params["place_id"]
 end
 
 def create
   @entry = Entry.new
 
   @entry["title"] = params["title"]
   @entry["description"] = params["description"]
   @entry["posted_on"] = params["posted_on"]
 
 @entry["place_id"] = params["place_id"]
 
   @entry.save
   redirect_to "/places/#{@place["place_id"]}"
 end

end
