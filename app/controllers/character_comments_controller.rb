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

  #get '/characters/:character_id/comments/:id' do

  #end

  get '/characters/:character_id/comments/:id/edit' do
    @comment = Comment.find_by(params)
    if @comment.user_id == session[:user_id]
      erb :'comments/edit'
    else
      redirect '/'
    end
  end

  patch '/characters/:character_id/comments/:id' do
    if Comment.find(params[:id].to_i)
      comment = Comment.find(params[:id].to_i)
      user = User.find(comment.user_id)
      if user == current_user && comment.character_id == params[:character_id].to_i
        params[:comment][:timestamp] = params[:comment][:timestamp].to_i
        comment.update(params[:comment])
        redirect "/characters/#{comment.character_id}/comments"
      end
      redirect "/characters/#{comment.character_id}/comments"
    else
      redirect "/"
    end
  end

  delete '/characters/:character_id/comments/:id' do
    comment = Comment.find(params[:id].to_i)
    if current_usr == comment.user && comment.character_id == params[:character_id].to_i
      comment.destroy
      redirect "/characters/#{comment.character_id}/comments"
    else
      redirect "/user/#{comment.user_id}"
    end
  end



end