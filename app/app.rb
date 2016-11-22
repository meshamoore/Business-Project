require "sinatra"

get '/gallery' do
	@title = 'Gallery'
	@heading = 'Our Goats'
	erb :gallery
end