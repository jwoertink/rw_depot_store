class LineItemsController < ApplicationController
  
  def create
    @product = Product.find(params[:product_id])
    @line_item = current_order.line_items.build(name: @product.name, price: @product.price, quantity: params[:line_item][:quantity])
    if @line_item.save
      redirect_to product_path(@product), notice: "#{@line_item.name} added to your order."
    else
      render @product
    end
  end

end
