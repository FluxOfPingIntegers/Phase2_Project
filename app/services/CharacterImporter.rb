require 'pry'
require 'dotenv/load'

class CharacterImporter

  def self.seed
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

  end

end