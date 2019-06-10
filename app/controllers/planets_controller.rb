class PlanetsController < ApplicationController
  def show
    body = {"query": "query { planet(id: \"#{params[:id]}\") { name, rotationPeriod, orbitalPeriod, diameter, climates, gravity, terrains, surfaceWater, population, residentConnection { residents { name, id } }, filmConnection { films { title, episodeID } } } }"}
    response = query_request(body)
    @planet = response["planet"]
  end
end
