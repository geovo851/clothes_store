class StoreController < ApplicationController
  # filter_access_to :all
  include CurrentCart

  def index
    @products = Product.page(params[:page]).per(10)
    @categories = Category.all
    
    count_in_cart

    respond_to do |format|
      format.html
      format.js {}
    end
  end
  
  def product
    @product = Product.find(params[:id])
    count_in_cart
    @categories = Category.all
  end
  
  def cart
   @cart = Order.find(params[:id])
  end

  def search_products
    @products = Product.where(category_id: params[:id]).order(:id).page(params[:page]).per(6)

    @category = Category.find(params[:id])
    @category_id = "category_#{params[:id]}"

    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def search_brand_products
    @products = Product.where(brand_id: params[:id]).order(:id).page(params[:page]).per(6)
    @brand = Brand.find(params[:id])

    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def contact
    @categories = Category.all
    count_in_cart
    @message = Message.new
  end

  def services
  end

  private

    def count_in_cart
      if user_signed_in?
        set_cart
        @count_in_cart = @cart.products_orders.count
      end
    end
end
