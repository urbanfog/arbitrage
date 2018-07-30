# frozen_string_literal: true

# This controller covers the CRUD actions of products
class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      flash[:success] = 'Your product has been listed.'
      redirect_to @product
    else
      flash[:alert] = 'Your product could not be listed.'
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title,
                                    :description,
                                    :address,
                                    :price,
                                    :image)
  end
end
