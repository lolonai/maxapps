class GroupesController < ApplicationController
  before_action :set_groupe, only: %i[show edit delete update]
  before_action :set_user, only: %i[new create update]

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
      redirect_to @groupe, notice: 'Groupe Creer!'
    else
      render :new
    end
  end

  def show
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
    params.require(:groupe).permit(:name, :photo)
  end

  def set_user
    @user = User.find(current_user.id)
  end

  def set_groupe
    @groupe = Groupe.find(params[:id])
  end

end
