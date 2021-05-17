require 'pry'

class UsersController < ApplicationController

  get "/users/new" do

    erb :"users/new"
  end

  post "/users" do
    user = User.create(params["user"])
    redirect "/"
  end

end