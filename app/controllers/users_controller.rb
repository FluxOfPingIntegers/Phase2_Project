require 'pry'

class UsersController < ApplicationController

  get "/users" do
    @users = User.all
    erb :"users/index"
  end

  get "/users/new" do

    erb :"users/new"
  end

  get "/login" do
    erb :"sessions/new"
  end

  post "/users" do
    user = User.create(params["user"])
    session[:user_id] = user.id
    redirect "/"
  end

  post "/sessions" do
    user = User.find_by_username(params["user"]["username"])
    if user && user.authenticate(params["user"]["password"])
      session[:user_id] = user.id
      redirect "/"
    else
      redirect "/login"
    end 
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

end