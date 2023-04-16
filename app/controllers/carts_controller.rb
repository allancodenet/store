class CartsController < ApplicationController
  before_action :initialize_cart
  before_action :visit_count
  

 

 
  def add
    @cart.add_item params[:id]
    session["cart"] = @cart.serialize
    product = Product.find_by(id:params[:id])
    flash[:notice ]= "#{product.name} added successfully, you have #{@cart.count} items"
    redirect_to  root_path 
  end
  
  def show
    
  end

  def checkout
    
  end
end
