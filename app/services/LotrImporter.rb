require 'pry'
require 'dotenv/load'

class LOTRImporter
  
  def self.seed
    LOTRImporter.api
    LOTRImporter.seed
  end

  def self.api
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
    quotes = JSON.parse(response.body)

    Character.all.each do |c|
      q = quotes["docs"].select {|x| x["character"] == c.api_id}
      q.each {|x| Quote.find_or_create_by(character_id: c.id, content: x["dialog"], movie: x["movie"], api_id: x["character"]) }
    end

  end

  def self.quotes
    Quote.all.each do |q|
      s = q.content
      q.update(content: s.strip)
    end
    Quote.all.each do |q|
      if q.content.size < 9
        q.delete
      end  
    end
  end

end