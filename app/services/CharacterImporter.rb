require 'pry'
require 'dotenv/load'

class LOTRImporter
  attr_accessor :character_json, :quote_json

  def self.seed_characters
    url = "https://the-one-api.dev/v2/character"
    uri = URI(url)

    headers = {
        'Authorization'=>"Bearer #{ENV['KEY']}",
        'Content-Type' =>'application/json',
        'Accept'=>'application/json'
    }
    
    request = Net::HTTP.new(uri.host, uri.port)
    request.use_ssl = true
    response = request.get(uri.path, headers)
    @@character_json = JSON.parse(response.body)
    #stored as json
  end

  def self.seed_quotes
    url = "https://the-one-api.dev/v2/quote"
    uri = URI(url)

    headers = {
        'Authorization'=>"Bearer #{ENV['KEY']}",
        'Content-Type' =>'application/json',
        'Accept'=>'application/json'
    }
    
    request = Net::HTTP.new(uri.host, uri.port)
    request.use_ssl = true
    response = request.get(uri.path, headers)
    @@quote_json = JSON.parse(response.body)
    #stored as json
  end

end