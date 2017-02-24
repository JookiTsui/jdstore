class CartsController < ApplicationController

  def create
  end

  def delete_all_cart_items
    @cart = current_cart
    @cart.delete_all_cart_items!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
  end

end
