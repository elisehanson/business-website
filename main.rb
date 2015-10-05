


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




#load the mandrill gem
require "mandrill"

#load the sinatra gem
require "sinatra"


#this defines the send_email message
#def send_email(message_body)
#mandrill = Mandrill:API.new

 
#set message params
#
#message = {  
#    :subject=> "Hello from the Mandrill API",  
#    :from_name=> "Your name",  
#    :text=> message_body,  
#    :to=>[{:email=> "melissaphan09@yahoo.com", :name=> "Melissa Phan"}],  
#    :html=>"<html><h1>(message_body)</h1></html>",  
#    :from_email=>"sender@yourdomain.com" 
#} 
#    
#    sending = mandrill.messages.send message 
#    puts sending
#end
#
#get "/contact-us" do
#    erb :form
#end

