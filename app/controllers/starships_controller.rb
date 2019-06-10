class StarshipsController < ApplicationController
  def show
    body = {"query": "query { starship(id: \"#{params[:id]}\") { name, model, manufacturers, costInCredits, length, maxAtmospheringSpeed, crew, passengers, cargoCapacity, consumables, hyperdriveRating, MGLT, starshipClass, filmConnection { films { title, episodeID } }, pilotConnection { pilots { name, id } } } }"}
    response = query_request(body)
    @starship = response["starship"]
  end
end
