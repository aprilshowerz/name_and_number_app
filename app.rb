require 'sinatra'
require_relative 'addition_function.rb'

get '/' do
	
	erb :get_name

end

post '/name' do

	user_name = params[:name_input]

	#erb :greeting, :locals => {:user_name => user_name}
	erb :age_input, :locals => {:user_name => user_name}

post '/age' do	
	user_name = params[:name_input]
	user_age = params[:age_input]
	erb :favorite_numbers, :locals => {:user_name => user_name, :age => user_age}
end


end