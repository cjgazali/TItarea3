class MoviesController < ApplicationController
  def index
    @response = RestClient.get('https://swapi.co/api/films/')
    @movies = JSON.parse(@response)["results"]
  end

  def show
    response = RestClient.get('https://swapi.co/api/films/' + params[:id] + '/')
    @movie = JSON.parse(response)
  end
end
