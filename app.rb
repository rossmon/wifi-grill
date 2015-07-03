require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './temps/temp'
#models/model'

get '/' do
	erb :index
end
 
post '/submit' do
	@temp = Temp.new(params[:temp])
	if @temp.save
		redirect '/temps'
	else
		"Sorry, there was an error!"
	end
end

get '/temps' do
	@temps = Temp.all
	erb :temps2
end

get '/temps2' do
        @temps = Temp.where("device_id = ?", params[:temp])
        erb :temps2
end
