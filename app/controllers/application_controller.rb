class ApplicationController < ActionController::Base
    def visit_count
        session[:visit_count] ||= 0
        session[:visit_count] +=1

        @visit_count =  session[:visit_count]
    end
  

    def initialize_cart
        @cart = Cart.build_from_hash session
    end

end
