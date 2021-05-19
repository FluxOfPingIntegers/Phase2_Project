require 'pry'

class UsersController < ApplicationController

  get "/users" do
    @users = User.all
    erb :"users/index"
  end

  get "/users/new" do

    erb :"users/new"
  end

  post "/users" do
    user = User.create(params["user"])
    session[:user_id] = user.id
    redirect "/"
  end

  get "/users/:id" do
    if logged_in?
      @user = User.find(session[:user_id])
      erb :"users/show"
    else
      redirect "/login"
    end
  end

  get "/user/:id/edit" do
    if logged_in?
      @user = User.find(session[:user_id])
      erb :"users/edit"
    else
      redirect "/login"
    end
  end

  put '/user/:id' do
    binding.pry
  end

  delete '/user/:id' do
    binding.pry    
  end

# STILL NEED "get '/user/:id/edit' , put '/user/:id' , delete '/user/:id'"


  post "/sessions" do
    user = User.find_by_username(params["user"]["username"])
    if user && user.authenticate(params["user"]["password"])
      session[:user_id] = user.id
      redirect "/"
    else
      redirect "/login"
    end 
  end

  get "/login" do
    erb :"sessions/new"
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

end