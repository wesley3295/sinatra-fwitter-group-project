class TweetsController < ApplicationController

    get '/tweets' do
        @current_user = User.find_by_id(session[:user_id])
        if @current_user
         erb :'/tweets/index' 
        else
            erb :'/tweets/error' 
        end
        
    end

    get '/tweets/new' do
        erb :'/tweets/new'
    end

end
