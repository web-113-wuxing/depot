class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.xml
  def index
    @photos = Photo.all
    @recphoto = Photo.selectphoto
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.xml
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.xml
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.xml
 def create
     @photo = Photo.new(params[:photos])
    @filename=save_file   #调用save_file方法，返回文件名
     @photo.url="/uploads/#{@filename}"   #保存文件路径字段
     @photo.name=@filename 
     if @photo.save
       flash[:notice] = 'Photo was successfully created.'
       redirect_to :action => 'index'
     else
       render :action => 'new'
     end
   end

  # PUT /photos/1
  # PUT /photos/1.xml
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to(@photo, :notice => 'Photo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.xml
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to(photos_url) }
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
       File.open("#{RAILS_ROOT}/public/#{@filename}", "wb") do |f|   
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
