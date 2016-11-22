require 'sinatra'

get '/' do
	"TODO: Create home page template"
end

get '/contact' do
	@title = 'Contact'
	@heading = 'Contact Us Today About Our Goats'
	erb :contact
end

post '/contact' do
	"You submitted the form"
end