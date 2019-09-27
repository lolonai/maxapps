class PhotosController < ApplicationController
  before_action :set_groupe, only: %i[show edit delete update sign_in new index create]
  skip_before_action :show_groupe_nav, only: %i[create update delete]

  def index
    # byebug
    if params[:query]
      @photos = Photo.where(groupe_id: @groupe.id).order(created_at: :asc)
    else
      @photos = Photo.where(groupe_id: @groupe.id).order(created_at: :desc)
    end


  end

  def new
    @photo = Photo.new
  end

  def create
    photo_params[:photo].each do |img|
      @photo = Photo.new
      @photo.description = photo_params[:description]
      @photo.user_id = current_user.id
      @photo.groupe_id = @groupe.id
      @photo.photo = img
      @photo.save!
    end
    if @photo.save!
      redirect_to groupe_photos_path, notice: 'Groupe Crée !'
    else
      render :new
    end
  end

  def delete
  end

  def show
  end

  private

  def photo_params
    params.require(:photo).permit(:description, {photo: []})
  end

  def set_groupe
    @groupe = Groupe.find(params[:groupe_id])
  end

end
