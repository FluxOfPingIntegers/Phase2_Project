require 'pry'

class UsersController < ApplicationController

  get "/user" do
    @users = User.all
    erb :"users/index"
  end

  get "/user/new" do

    erb :"users/new"
  end

  post "/user" do
    user = User.create(params["user"])
    session[:user_id] = user.id
    redirect "/"
  end

  get "/user/:id" do
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

  patch '/user/:id' do
    user = User.find(params[:id])
    if user == current_user
      if user.update(params[:user])
        redirect "/user/#{user.id}"
      else
        redirect "/user/#{user.id}/edit"
      end
    end
  end

  delete '/user/:id' do
    user = User.find(params[:id])
    if user == current_user
      user.comments.destroy_all
      user.favorite_quotes.destroy_all
      user.destroy
      session.clear
      redirect "/"
    else
      redirect "/"
    end   
  end

  get '/user/:id/quotes' do
    if logged_in?
      @user = User.find(session[:user_id])
      erb :'quotes/index'
    else
      redirect "/login"
    end
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

  get "/login" do
    erb :"sessions/new"
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

end