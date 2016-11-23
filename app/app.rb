require "sinatra"
require_relative "helpers.rb"

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
	@submitted = params[:submitted] ? true : false
	erb :contact
end

get '/home' do
	@title = "Bubba's Pygmy Goat Rental"
	@heading = "Bubba's Pygmy Goat Rental"

	erb :home
end

post '/contact' do
	puts params.inspect
	send_email(params[:email], "New PYGMY EMAIL", "Thank you for contacting us. We'll get back to you as soon as we can.")
	redirect to('/contact?submitted=1')
end

get '/about' do
	@title = "About"
	@heading = "About Us"
	erb :about
end

