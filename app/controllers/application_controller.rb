require './config/environment'
require 'sinatra/base'
require "sinatra/activerecord"

class ApplicationController < Sinatra::Base
  
    configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"] #ENV["SESSION_SECRET"] will need to be here.  Will need to be setup in gitignore
    end

    get "/" do
      erb :home
    end

end