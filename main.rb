


require 'sinatra'

  get '/' do    
   erb :home
  end

  get '/services' do    
   erb :services
  end

 get '/about' do    
   erb :about
  end

 get '/gallery' do    
   erb :gallery
  end

 get '/contact' do    
   erb :about
  end



require 'mandrill' 

m = Mandrill::API.new 
message = {  
	:subject=> "Hello from the Mandrill API",  
	:from_name=> "Your name",  
	:text=>"Hi message, how are you?",  
	:to=>[{:email=> "email@email.com", 
	:name=> "Name Name"}],  
	:html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
	:from_email=>"email@email.com" 
} 
	sending = m.messages.send message 
	puts sending


