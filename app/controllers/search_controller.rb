class SearchController < ApplicationController
  def show
    response = RestClient.get('https://swapi.co/api/films/?search=' + params[:search])
    @films = JSON.parse(response)["results"]

    response = RestClient.get('https://swapi.co/api/people/?search=' + params[:search])
    @characters = JSON.parse(response)["results"]

    response = RestClient.get('https://swapi.co/api/planets/?search=' + params[:search])
    @planets = JSON.parse(response)["results"]

    response = RestClient.get('https://swapi.co/api/starships/?search=' + params[:search])
    @starships = JSON.parse(response)["results"]
  end
end
