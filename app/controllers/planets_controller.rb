class PlanetsController < ApplicationController
  def show
    response = RestClient.get('https://swapi.co/api/planets/' + params[:id] + '/')
    @planet = JSON.parse(response)
  end
end
