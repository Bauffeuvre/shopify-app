class ImagesController < ApplicationController
#  before_action :image_params


  def index
   @images = Image.all
  end
  
  def show
  @image = Image.find(params[:id])
end

def new
  @image = Image.new
  # redirect_to images_path
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
  params.require(:image).permit(:title, :rating, :legend, :path, :photo)
end



end
