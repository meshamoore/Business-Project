require 'sinatra'

get '/' do
	"TODO: Create home page template"
end

get '/contact' do
	@title = 'Contact'
	@heading = 'Contact Us'
	erb :contact
end

get '/home' do
	@title = "Bubba's Pygmy Goat Rental"
	@heading = "Bubba's Pygmy Goat Rental"

	erb :home
end