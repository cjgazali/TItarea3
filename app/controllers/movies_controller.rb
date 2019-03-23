class MoviesController < ApplicationController
  def index
    @response = RestClient.get('https://swapi.co/api/films/')
    @movies = JSON.parse(@response)["results"]
  end

  def show
    response = RestClient.get('https://swapi.co/api/films/')
    movies = JSON.parse(response)["results"]
    @movie = movies.detect {|m| m["episode_id"] == params[:id].to_i}

  end
end
