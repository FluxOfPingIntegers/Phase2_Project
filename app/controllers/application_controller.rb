require './config/environment'
require 'sinatra/base'
require "sinatra/activerecord"

class ApplicationController < Sinatra::Base
  
    configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
    end

    get "/" do
      erb :layout
    end

end