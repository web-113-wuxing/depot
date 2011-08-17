class StoreController < ApplicationController
   skip_before_filter :authorize
  def index
     @recphoto = Photo.selectphoto
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    end
  else
    @products = Product.all
    @cart = current_cart
    @best_product = max
  end
  
  def max
    max_mark = -1
    best_product = nil
    @products.each do |product|
      if product.mark > max_mark
        best_product = product
        max_mark = product.mark
      end
    end
    best_product
  end

  def selectit
    products = Product.selectitem(params[:product][:title])
    @recphoto = Photo.selectphoto
   if !products.nil?
     @products = products
    respond_to do |format|
      format.html # selectit.html.erb
      format.xml  { render :xml => @products }
    end
    end
  if products.nil?
     @products = Product.all
     @cart = current_cart
      flash[:notice] = 'Sorry,not found the book'
     render :action => 'index'  
  end
  end
  
  def show
    @product = Product.find(params[:id])
    @cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

end
