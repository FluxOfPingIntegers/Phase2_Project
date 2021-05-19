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

end