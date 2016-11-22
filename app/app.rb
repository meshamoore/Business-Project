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
	@submitted = params[:submitted] ? true : false
	erb :contact
end

get '/home' do
	@title = "Bubba's Pygmy Goat Rental"
	@heading = "Bubba's Pygmy Goat Rental"

	erb :home
end

post '/contact' do
	send_email(params[:email], params[:name], params[:message])
	redirect to('/contact?submitted=1')
end

def send_email(address, name, message)
	# send email here
end