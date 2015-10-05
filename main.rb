


require 'sinatra'

  get '/' do    
   erb :home, :layout => false
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
   erb :contact
  end


require 'sinatra'


post '/contact-us-post' do
  puts "these are the params from the post"
  puts params.inspect
end

# post '/contact-us-post' do 
#   name = params[:name]
#   sender_email = params[:email]
#   message = params[:message]
#  


# require 'mandrill' 

# m = Mandrill::API.new 
# message = {  
#   :subject=> "Hello from the Mandrill API",  
#   :from_name=> "Your name",  
#   :text=>"Hi message, how are you?",  
#   :to=>[{:email=> "recipient@theirdomain.com", 
#   :name=> "Recipient1"}],  
#   :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
#   :from_email=>"sender@yourdomain.com" 
# } 
#   sending = m.messages.send message puts sending