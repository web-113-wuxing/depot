class ProductsController < ApplicationController
 
  # GET /products
  # GET /products.xml
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end
  # POST /products
  # POST /products.xml
  def create
     @product = Product.new(params[:products])
    @filename=save_file   #调用save_file方法，返回文件名
     @product.image_url="/uploads/#{@filename}"   #保存文件路径字段
     @product.title=params[:product][:title]
    @product.description=params[:product][:description]
    @product.price=params[:product][:price]
     
     if @product.save
       flash[:notice] = 'Photo was successfully created.'
       redirect_to :action => 'index'
     else
       render :action => 'new'
     end
   end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
  
   def configure_charsets   
     @headers["Content-Type"]="text/html;charset=utf-8"  
   end         
  def upload
    
   end
 def upload_file(file)   
     if !file.original_filename.empty?   
       @filename=get_file_name(file.original_filename)    
       File.open("#{RAILS_ROOT}/public/uploads/#{@filename}", "wb") do |f|   
       f.write(file.read)   
       end   
       return @filename  
     end   
   end   
 def get_file_name(filename)   
     if !filename.nil?   
       Time.now.strftime("%Y%m%d%H%M%S") + '_' + filename   
     end   
   end   
 def save_file
     unless request.get?   
       if filename=upload_file(params[:file]['file'])   
         return filename   
       end   
     end   
   end   

end
