class CharactersController < ApplicationController
  def show
    body = {"query": "query { person(id: \"#{params[:id]}\") { height, mass, hairColor, skinColor, eyeColor, birthYear, gender, homeworld { name, id }, filmConnection { films { title, episodeID } }, starshipConnection { starships { name, id } } } }"}
    response = query_request(body)
    @character = response["person"]
  end
end
