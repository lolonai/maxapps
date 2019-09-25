class GroupesController < ApplicationController
  before_action :set_groupe, only: %i[show edit delete update sign_in]
  before_action :set_user, only: %i[new create update sign_in]

  def view
    @groupes = Groupe.all
  end

  def new
    @groupe = Groupe.new
  end

  def create
    @groupe = Groupe.new(groupe_params)
    @groupe.user_id = current_user.id
    if @groupe.save
      membre = Membre.new
      membre.user_id = current_user.id
      membre.groupe_id = @groupe.id
      membre.save!
      redirect_to @groupe, notice: 'Groupe Crée !'
    else
      render :new
    end
  end

  def show
    @membres = Membre.where(groupe_id: @groupe.id).joins(:user)
    if Membre.where(groupe_id: @groupe.id, user_id: current_user.id).count > 0
    else
      redirect_to sign_group_path(@groupe.id)
    end
  end

  def sign_in
    if Membre.where(groupe_id: @groupe.id, user_id: current_user.id).count > 0
      redirect_to groupe_path(@groupe.id)
    else
      @membre = Membre.new
    end
  end

  def membre_add
    groupe = Groupe.find(membre_params[:groupe])
    if groupe.authenticate(membre_params[:password])
      membre = Membre.new
      membre.user_id = membre_params[:user]
      membre.groupe_id = membre_params[:groupe]
      membre.save!
      redirect_to groupe_path(groupe.id)
    else
      redirect_to sign_group_path(groupe.id)
    end


  end


  def list
    @groupes = Groupe.all
  end

  def edit
  end

  def delete
  end

  def update
  end


  private

  def groupe_params
    params.require(:groupe).permit(:name, :photo, :password)
  end

  def membre_params
    params.require(:groupe).permit(:user, :groupe, :password)
  end

  def set_user
    @user = User.find(current_user.id)
  end

  def set_groupe
    @groupe = Groupe.find(params[:id])
  end



end


