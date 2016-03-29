class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
      format.html { redirect_to products_path, notice: "Новая книга добавлена" }
      format.json { render json: @resource }
    else
      format.html { redirect_to new_product_path, notice: "Введенные данные не корректны" }
      format.json { render json: @guest.errors, status: :unprocessable_entity }
    end
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update!(product_params)
    flash[:notice] = "Данные обновленны"
    redirect_to products_path
  end

  def destroy
    product = Product.find(params[:id])
    product.delete
    redirect_to products_path
  end

  def product_params
      params.require(:product).permit(:title, :description, :price, :img_url, :category_id)
  end
end
