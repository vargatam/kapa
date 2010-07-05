class KapaController < ApplicationController
  def index
    #product group list
    #TODO - slideshow animation of products in a group
    @product_groups = ProductGroup.find(:all)
  end

  def show
    #list products in a product group
    @product_group = ProductGroup.find(params[:id])
    #product_group.products is a collection of all products
  end

  def new
    #add product group
    @product_group = ProductGroup.new
  end

  def create
    #save new product group
    @product_group = ProductGroup.new(params[:product_group])
    if @product_group.save
      flash[:notice] = 'Product group created'
      redirect_to :action => :show, :id => @product_group
    else
      render :action => :new
    end
  end

  def edit
    @product_group = ProductGroup.find(params[:id])
  end

  def update
    #update existing product group
    @product_group = ProductGroup.find(params[:id])
    if @product_group.update_attributes(params[:product_group])
      flash[:notice] = 'Product group updated'
      redirect_to :action => :show, :id => @product_group
    else
      render :action => :edit
    end
  end

  def delete
    # delete product group
    @product_group = ProductGroup.find(params[:id])
    if @product_group.products.empty?
      @product_group.destroy
      flash[:notice] = 'Product group deleted'
    else
      flash[:notice] = 'Only empty product groups can be deleted'
    end
    redirect_to :action => :index
  end
  
  def contact
    @email = Email.new({:to => "vargat@elte.hu", :subject => "KONTAKT from KAPA"})
  end

  def send_message
    @email = Email.new(params[:email])
  end
  
  def checkout
    #ordering form
  end

  def save_order
    #save order
  end

  def services
    #static
  end

  def certificates
    #static
  end
end
