class CharacterCommentsController < ApplicationController

  get '/characters/:character_id/comments' do

  end

  get '/characters/:character_id/comments/new' do

  end

  post '/characters/:character_id/comments' do
    binding.pry
    comment = params["comment"]
    comment["character_id"] = comment["character_id"].to_i
    comment["user_id"] = session[:user_id]
    comment["timestamp"] = Time.now.to_i
    Comment.create(comment)
    redirect "/characters/:id"
  end

  get '/characters/:character_id/comments/:id' do

  end

  get '/characters/:character_id/comments/:id/edit' do

  end

  put '/characters/:character_id/comments/:id' do

  end

  delete '/characters/:character_id/comments/:id' do

  end



end