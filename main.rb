

require 'sinatra'

require "mandrill"


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


# this defines the send_email method
def send_email(message_body, name_input, email_input)
 # create a new mandrill object
  mandrill = Mandrill::API.new


# set the message params
# pay special attention to the keys
  message = {  
    :subject=> "Hello from the Mandrill API",  
    :from_name=> name_input,  
    :text=> message_body,  
    :to=>[{:email=> "spa@spa.com", :name=> "Serein Spa"}],  
    :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
    :from_email=> email_input } 

  # this calls the send method of the messages object within the mandrill object
  # (class inception -> its defined internally as a class within a class)
  sending = mandrill.messages.send message

  # return the sending object, in this case its a Hash object
  #   Hash object documentation -> http://ruby-doc.org/core-2.2.2/Hash.html
  # this hash will give you information on if any errors that may occur, if it sent, 
  #   as well as other relevant information
  puts sending
end


post "/contact-us-post" do
  # displays "sending email now" in the bash terminal
  puts "sending email now"

  # this invokes the send_email method we defined above
  send_email(params[:message_body],params[:name_input],params[:email_input])
end


