require 'net/http'

class ApplicationController < ActionController::Base

  UrlBase = 'https://swapi-graphql-integracion-t3.herokuapp.com/'

  def query_request(body, url=UrlBase)
    uri = URI(url)

    http_post = Net::HTTP::Post.new(uri)
    http_post['content-type'] = 'application/json'
    http_post.body = body.to_json

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    response = http.request(http_post)
    response = JSON.parse(response.body)

    # puts response

    return response['data']
  end
end
