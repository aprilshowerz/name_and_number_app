require 'sinatra'
require_relative 'addition_function.rb'

get '/' do
	
	erb :get_name

end

post '/name' do

	user_name = params[:name_input]

	erb :greeting, :locals => {:user_name => user_name}

end