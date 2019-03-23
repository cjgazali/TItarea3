class CharactersController < ApplicationController
  def show
    response = RestClient.get('https://swapi.co/api/people/' + params[:id] + '/')
    @character = JSON.parse(response)
  end
end
