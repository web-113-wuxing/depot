class LineItemsController < ApplicationController
  # GET /line_items
<<<<<<< HEAD
  # GET /line_items.xml
=======
  # GET /line_items.json
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  def index
    @line_items = LineItem.all

    respond_to do |format|
      format.html # index.html.erb
<<<<<<< HEAD
      format.xml  { render :xml => @line_items }
=======
      format.json { render :json => @line_items }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    end
  end

  # GET /line_items/1
<<<<<<< HEAD
  # GET /line_items/1.xml
=======
  # GET /line_items/1.json
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  def show
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
<<<<<<< HEAD
      format.xml  { render :xml => @line_item }
=======
      format.json { render :json => @line_item }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    end
  end

  # GET /line_items/new
<<<<<<< HEAD
  # GET /line_items/new.xml
=======
  # GET /line_items/new.json
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  def new
    @line_item = LineItem.new

    respond_to do |format|
      format.html # new.html.erb
<<<<<<< HEAD
      format.xml  { render :xml => @line_item }
=======
      format.json { render :json => @line_item }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    end
  end

  # GET /line_items/1/edit
  def edit
    @line_item = LineItem.find(params[:id])
  end

  # POST /line_items
<<<<<<< HEAD
  # POST /line_items.xml
=======
  # POST /line_items.json
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)
<<<<<<< HEAD

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to(store_url) }
        format.js   { @current_item = @line_item }
        format.xml  { render :xml => @line_item, :status => :created, :location => @line_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @line_item.errors, :status => :unprocessable_entity }
=======
    
    respond_to do |format|
      if @line_item.save
        format.html { redirect_to(@line_item.cart, 
        :notice => 'Line item was successfully created.')}
        format.xml { render :xml => @line_item, 
          :status => :created, :location => @line_item}
        
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @line_item.errors, 
          :status => :unprocessable_entity }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
      end
    end
  end

  # PUT /line_items/1
<<<<<<< HEAD
  # PUT /line_items/1.xml
=======
  # PUT /line_items/1.json
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  def update
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      if @line_item.update_attributes(params[:line_item])
<<<<<<< HEAD
        format.html { redirect_to(@line_item, :notice => 'Line item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @line_item.errors, :status => :unprocessable_entity }
=======
        format.html { redirect_to @line_item, :notice => 'Line item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @line_item.errors, :status => :unprocessable_entity }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
      end
    end
  end

  # DELETE /line_items/1
<<<<<<< HEAD
  # DELETE /line_items/1.xml
=======
  # DELETE /line_items/1.json
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy

    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to(line_items_url) }
      format.xml  { head :ok }
=======
      format.html { redirect_to line_items_url }
      format.json { head :ok }
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    end
  end
end
