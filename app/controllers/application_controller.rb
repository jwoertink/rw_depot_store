class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :get_order
  
  
  private
  
    def get_order
      @order ||= current_order
    end
  
    def current_order
      Order.find(session[:order_id])
    rescue ActiveRecord::RecordNotFound
      order = Order.create
      session[:order_id] = order.id
      order
    end
      
end
