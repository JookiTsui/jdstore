class CartsController < ApplicationController

  def delete_all_cart_items
    @cart = Cart.find(params[:id])
    @cart.delete_all_cart_items!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
  end

end
