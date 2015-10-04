


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

