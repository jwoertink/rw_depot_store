module ApplicationHelper
  
  def link_to_cart(order)
    total_items = order.line_items.count
    if total_items > 0
      count = order.line_items.inject(0) { |sum, li| sum += li.quantity }
      link_to(pluralize(count, 'item') + ' - Checkout', root_path)
    else
      link_to('Cart', root_path)
    end
  end
  
end
