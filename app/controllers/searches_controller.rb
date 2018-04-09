class SearchesController < ApplicationController

  def search
  end

  def friends
    foursquare = FoursquareService.new
    @friends = foursquare.friends(session[:token])
  end

  def foursquare
    foursquare_initiation = FoursquareService.new
    foursquare_initiation.foursquare
  end
end
