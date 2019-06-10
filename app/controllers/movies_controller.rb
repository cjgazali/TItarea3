class MoviesController < ApplicationController
  def index
    body = {"query": "query{allFilms{edges{node{title,releaseDate,episodeID,director,producers}}}}"}
    response = query_request(body)
    @movies = response["allFilms"]["edges"]
  end

  def show
    response = RestClient.get('https://swapi.co/api/films/' + params[:id] + '/')
    @movie = JSON.parse(response)

    id = params[:id].to_i
    if [1, 2, 3].include? id
      id += 3
    elsif [4, 5, 6].include? id
      id -= 3
    end
    puts id

    body = {"query": "query { film(filmID: #{id}) { episodeID, title, openingCrawl, director, producers, releaseDate, characterConnection { characters { name, id } }, planetConnection { planets { name, id } }, starshipConnection { starships { name, id } } } }"}
    response = query_request(body)
    @movie = response["film"]
  end
end
