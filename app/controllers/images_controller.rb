class ImagesController < ApplicationController
<<<<<<< HEAD
#  before_action :image_params


  def index
   @images = Image.all
=======
  # Controller for the routes
  def index
   @images = Image.alls
>>>>>>> b5c6566438179161fc249da7caacb6f67b5f4729
  end
  
  def show
  @image = Image.find(params[:id])
end

def new
  @image = Image.new
<<<<<<< HEAD
  # redirect_to images_path
=======
  # redirect_to action: "index" 
>>>>>>> b5c6566438179161fc249da7caacb6f67b5f4729
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
<<<<<<< HEAD
=======
  # raise
>>>>>>> b5c6566438179161fc249da7caacb6f67b5f4729
  redirect_to images_path
  
end

def destroy
  @image = Image.find(params[:id])
  @image.destroy
  redirect_to images_path
  
end

<<<<<<< HEAD

private

# Strong parameters

def image_params
  params.require(:image).permit(:title, :rating, :legend, :path, :photo)
end



end
=======
private

# Strong parameters
def image_params
  params.require(:image).permit(:name, :rating, :category, :legend, :img_link)
  
end


end
>>>>>>> b5c6566438179161fc249da7caacb6f67b5f4729
