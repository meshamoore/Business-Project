require "sinatra"

get '/gallery' do
	@title = 'Gallery'
	@heading = 'Our Goats'
	erb :gallery
end

get '/' do
	"TODO: Create home page template"
end

get '/contact' do
	@title = 'Contact'
	@heading = 'Contact Us Today About Our Goats'
	erb :contact
end

get '/home' do
	@title = "Bubba's Pygmy Goat Rental"
	@heading = "Bubba's Pygmy Goat Rental"

	erb :home
end

post '/contact' do
	"You submitted the form"

end