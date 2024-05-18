class PlacesController < ApplicationController

def index
  @places = Place.all
end

def show
  @places = Place.find_by({ "id" = params["id"]})
  @entries = Contact.where({ "places_id" => @places ["id"]})

end


  def new
  @place = Place.find_by({ "id" => params ["place_id"] }) 
end

def create
  @entry = Entry.new

@places.save

redirect_to "/places"

end
end

