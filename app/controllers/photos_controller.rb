class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
  end

  def create
  end

  def delete
  end

  def show
  end

  def photo_params
    params.require(:photo).permit(:name, :description, :photo)
  end
end
