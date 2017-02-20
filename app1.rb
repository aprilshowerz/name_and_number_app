require 'sinatra'
require_relative 'name_num.rb'

get '/' do
	
	erb :name_num

end

post '/name' do

	user_name = params[:name_input]

	erb :greeting, :locals => {:user_name => user_name}

end