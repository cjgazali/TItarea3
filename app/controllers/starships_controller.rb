class StarshipsController < ApplicationController
  def show
    response = RestClient.get('https://swapi.co/api/starships/' + params[:id] + '/')
    @starship = JSON.parse(response)
  end
end
