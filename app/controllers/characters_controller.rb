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

  post "/characters/:id/quotes" do
    if params.has_key?("quote_id")
      user = current_user
      if user.favoritequotes.select{|f| f.character_id == params[:id].to_i}.empty?
        favoritequote = {quote_id: params[:quote_id].to_i, character_id: params[:id].to_i, user_id: session[:user_id]}
        FavoriteQuote.create(favoritequote)
      else
      binding.pry
      end
    else
      redirect :'quotes/show'
    end
  end

end