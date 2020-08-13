class ProductsController < ApplicationController
  def index
    @products = Product.order(created_at: "DESC").includes(:host).page(params[:page]).pae(1)
  end
end