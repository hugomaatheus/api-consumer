class AuthorsController < ApplicationController

  require 'rest_client'

  API_BASE_URL = "http://localhost:3000/api/v1/"

  def index
    m_uri = "#{API_BASE_URL}/authors.json"

    rest_resource = RestClient::Resource.new(m_uri)

    authors = rest_resource.get

    @authors = JSON.parse(authors, :symbolize_names => true)
  end

end
