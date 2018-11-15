require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/index' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb :greet
  end

!run if app_file == $0
end
