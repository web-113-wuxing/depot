class CartsController < ApplicationController
  # GET /carts
  # GET /carts.xml
  def index
    @carts = Cart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carts }
    end
  end

  # GET /carts/1
  # GET /carts/1.xml
  def show
    begin
<<<<<<< HEAD
      @cart = Cart.find(params[:id])
=======
    @cart = Cart.find(params[:id])
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, :notice => 'Invalid cart'
    else
<<<<<<< HEAD
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @cart }
      end
    end
  end
=======
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cart }
    end
  end
  end
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16

  # GET /carts/new
  # GET /carts/new.xml
  def new
    @cart = Cart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cart }
    end
  end

  # GET /carts/1/edit
  def edit
    @cart = Cart.find(params[:id])
  end

  # POST /carts
  # POST /carts.xml
  def create
    @cart = Cart.new(params[:cart])

    respond_to do |format|
      if @cart.save
        format.html { redirect_to(@cart, :notice => 'Cart was successfully created.') }
        format.xml  { render :xml => @cart, :status => :created, :location => @cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carts/1
  # PUT /carts/1.xml
  def update
    @cart = Cart.find(params[:id])

    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to(@cart, :notice => 'Cart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.xml
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    session[:cart_id] = nil
<<<<<<< HEAD

    respond_to do |format|
      format.html { redirect_to(store_url) }
=======
    
    respond_to do |format|
      format.html { redirect_to(store_url,:notice => '您的购物车已经清空') }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
      format.xml  { head :ok }
    end
  end
end
