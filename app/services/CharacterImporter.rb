require 'pry'
require 'dotenv/load'

class LOTRImporter
  attr_accessor :character_json, :quote_json

 # def self.seed_characters
 #   url = "https://the-one-api.dev/v2/character"
 #   uri = URI(url)
#
 #   headers = {
 #       'Authorization'=>"Bearer #{ENV['KEY']}",
 #       'Content-Type' =>'application/json',
 #       'Accept'=>'application/json'
 #   }
 #   
 #   request = Net::HTTP.new(uri.host, uri.port)
 #   request.use_ssl = true
 #   response = request.get(uri.path, headers)
 #   character = JSON.parse(response.body)

    #smeagol = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfe9e" }
    ## possible img reference 325 x 450
    #samwise_gamgee = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd0d" }
    #peregrin_took = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfe2e" }
    #meriadoc_brandybuck = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc7c" }
    #aragorn = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfbe6" }
    #boromir = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc57" }
    #legolas = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd81" }
    #gandalf = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfea0" }
    #gimili = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd23" }
    #frodo = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc15" }
    #galadriel = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd06" }
    #eowyn = character["docs"].select { |x| x["character"] == "5cdbdecb6dc0baeae48cfa59" }
    #arwen = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc07" }
    #elrond = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfcc8" }
    #saruman = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfea4" }
    #bilbo = character["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc38" }
    ## treebeard = character["docs"].select { |x| x["character"] == "5cd9d533844dc4c55e47afed" }

  #  binding.pry
    #stored as json
  #end

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
    quotes = JSON.parse(response.body)

    smeagol_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfe9e" }
    sam_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd0d" }
    pippin_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfe2e" }
    merry_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc7c" }

    aragorn_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfbe6" }
    boromir_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc57" }
    legolas_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd81" }
    gandalf_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfea0" }
    gimili_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd23" }
    frodo_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc15" }
    galadriel_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfd06" }
    eowyn_quotes = quotes["docs"].select { |x| x["character"] == "5cdbdecb6dc0baeae48cfa59" }
    arwen_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc07" }
    elrond_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfcc8" }
    saruman_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfea4" }
    bilbo_quotes = quotes["docs"].select { |x| x["character"] == "5cd99d4bde30eff6ebccfc38" }
    # treebeard_quotes = quotes["docs"].select { |x| x["character"] == "5cd9d533844dc4c55e47afed" }

    binding.pry
    #stored as json
  end

end