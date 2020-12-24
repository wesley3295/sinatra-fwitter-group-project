class TweetsController < ApplicationController

    get '/tweets' do
        @tweets = Tweet.all
        if logged_in?
              erb :'/tweets/index'
        else
           redirect '/login'
        end
    end

    get '/tweets/new' do
        erb :'/tweets/new'
    end

    post '/tweets' do
        tweet = Tweet.create(content: params[:content])
        redirect '/tweets'
    end
end
