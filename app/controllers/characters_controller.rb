class CharactersController < ApplicationController

  get "/characters" do
    @characters = Character.all
    erb :'characters/index'
  end

  get "/characters/:id" do
    if logged_in?
      @character = Character.find(params[:id])
      @users = User.all
      erb :'characters/show'
    else
      redirect "/"
    end
  end

  get "/characters/:id/quotes" do
    if logged_in?
      @character = Character.find(params[:id])
      @user = User.find(session[:user_id])
      erb :'quotes/show'
    else
      redirect "/login"
    end
  end

end