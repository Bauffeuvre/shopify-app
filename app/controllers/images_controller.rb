class ImagesController < ApplicationController
  # Controller for the routes
  def index
   @images = Image.alls
  end
  
  def show
  @image = Image.find(params[:id])
end

def new
  @image = Image.new
  # redirect_to action: "index" 
end

def create
  Image.create(image_params)
  redirect_to images_path
end


def edit
  @image = Image.find(params[:id])
end  

def update
  @image = Image.find(params[:id])
  @image.update(image_params)
  # raise
  redirect_to images_path
  
end

def destroy
  @image = Image.find(params[:id])
  @image.destroy
  redirect_to images_path
  
end

private

# Strong parameters
def image_params
  params.require(:image).permit(:name, :rating, :category, :legend, :img_link)
  
end


end