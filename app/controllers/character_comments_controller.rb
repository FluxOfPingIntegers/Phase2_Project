class CharacterCommentsController < ApplicationController

  get '/characters/:character_id/comments' do
    if logged_in?
      @character = Character.find(params[:character_id].to_i)
      erb :'comments/index'
    else
      redirect "/login"
    end
  end

  get '/characters/:character_id/comments/new' do
    if logged_in?
      @user = User.find(session[:user_id])
      @character = Character.find(params[:character_id])
    else
      redirect "/login"
    end
    if @character.comments.empty?
      erb :'comments/new'
    else
      redirect "/characters/#{@character.id}/comments"
    end
  end

  post '/characters/:character_id/comments' do
    comment = params["comment"]
    comment["character_id"] = comment["character_id"].to_i
    comment["user_id"] = session[:user_id]
    comment["timestamp"] = Time.now.to_i
    comment = Comment.create(comment)
    redirect "/characters/#{comment.character_id}"
  end

  get '/characters/:character_id/comments/:id' do

  end

  get '/characters/:character_id/comments/:id/edit' do

  end

  patch '/characters/:character_id/comments/:id' do

  end

  delete '/characters/:character_id/comments/:id' do

  end



end