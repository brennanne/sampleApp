class CartController < ApplicationController
  
    
  def add
    
    # get id of the product
    id = params[:id]
    
    # if cart session is already created use existing
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
   end
    
   #check if the product is already in the cart if so increment by one
   
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
   end
   
   redirect_to :action => :index
    
  end
  
  def index
    
    # pass cart information to the index view
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end 
  
end

      