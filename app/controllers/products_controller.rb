class ProductsController < ApplicationController
  before_action :search_product, only: [:index, :search]
  def index
    @products = Products.all
  end

  def search
    @results = @p.result.include(:category)
  end


  def search_product
    @p = Product.ransack(params[:q])
  end
end