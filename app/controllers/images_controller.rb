class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update, :destroy, :edit]
  skip_before_action :authenticate_user!, only: :index

  def index
    @images = Image.all
  end
    
  def show; end

  def new
    @image = Image.new
  end

  def create
    Image.create(image_params)
    redirect_to images_path
  end

  def edit; end  

  def update
    @image.update(image_params)
    redirect_to images_path 
  end

  def destroy
    @image.destroy
    redirect_to images_path
  end
  
  private
  
  def set_image
    @image = Image.find(params[:id])
  end
  
  # Strong parameters
  def image_params
    params.require(:image).permit(:title, :rating, :legend, :path, :photo)
  end
end
