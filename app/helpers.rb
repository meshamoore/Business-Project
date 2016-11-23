require 'sendgrid-ruby'
include SendGrid

def send_email(address, subject, text)
	to = Email.new(email: address)
	from = Email.new(email: 'noreply@example.com')
	content = Content.new(type: 'text/plain', value: text)

	mail = Mail.new(from, subject, to, content)	

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)	
end