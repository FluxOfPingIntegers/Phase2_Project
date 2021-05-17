require './config/environment'
require 'sinatra/base'
require "sinatra/activerecord"

class ApplicationController < Sinatra::Base
  
    configure do
    enable :sessions
    set :session_secret, 'secret'
    end

end