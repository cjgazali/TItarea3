class MoviesController < ApplicationController
  def index
    # unuse this
    @response = RestClient.get('https://swapi.co/api/films/')
    @movies = JSON.parse(@response)["results"]

    body = {"query": "query{allFilms{edges{node{title,releaseDate,episodeID,director,producers,id}}}}"}
    response = query_request(body)
    @movies = response["allFilms"]["edges"]
  end

  def show
    response = RestClient.get('https://swapi.co/api/films/' + params[:id] + '/')
    @movie = JSON.parse(response)
  end
end
