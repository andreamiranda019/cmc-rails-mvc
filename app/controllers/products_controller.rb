class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy] 

  def new
    @product = Product.new()
  end

  def create
    category = Category.find(params[:category_id])
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy

    redirect_to root_path
  end

  private
    def set_product
      @product =  Product.find(params[:id]) 
    end
    
    def product_params
      params.require(:product).permit(:name, :category_id, :code,
         :price, :brand, :material, :type, :color, :size, :use)
    end
end
