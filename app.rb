require 'sinatra/base'
require './lib/person'

class BirthdayGreeter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/index' do
    $person = Person.new(params[:name], params[:day], params[:month])
    @person = $person
    erb :greet
  end



!run if app_file == $0
end
