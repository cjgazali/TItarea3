class MoviesController < ApplicationController
  def index
    @response = RestClient.get('https://swapi.co/api/films/')
    @movies = JSON.parse(@response)["results"]
  end

  def show
  end
end
