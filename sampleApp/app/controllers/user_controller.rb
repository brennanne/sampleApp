class UserController < ApplicationController
    
    def login
        session[:login] = 1
        flash[:notice] = "Hello and Welcome!"
        redirect_to :controller => :items
        
    end
    
    def logout
        session[:login] = nil
        flash[:notice] = "Thank You, Goodbye"
        redirect_to :controller => :items
        
    end
    
end
