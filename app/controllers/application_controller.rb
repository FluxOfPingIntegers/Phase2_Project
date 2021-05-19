require './config/environment'
require 'sinatra/base'
require "sinatra/activerecord"

class ApplicationController < Sinatra::Base
  
    configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]
    set :public_folder, 'public'
    end

    get "/" do
      erb :home
    end



    helpers do

        def logged_in?
          !!session[:user_id]
        end

        def current_user
          logged_in? && User.find(session[:user_id])
        end

    end

end