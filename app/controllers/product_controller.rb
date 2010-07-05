class ProductController < ApplicationController
  layout 'kapa'
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.product_group = ProductGroup.find(params[:product_group])
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = 'Product created'
      redirect_to :action => :show, :id => @product
    else
      render :action => :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = 'Product updated'
      redirect_to :action => :show, :id => @product
    else
      render :action => :edit
    end
  end

  def delete
    @product = Product.find(params[:id])
    product_group_id = @product.product_group_id
    @product.destroy
    flash[:notice] = 'Product deleted'
    redirect_to :controller => :kapa, :action => :show, :id => product_group_id
  end

end
