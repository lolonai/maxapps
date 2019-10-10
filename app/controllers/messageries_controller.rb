class MessageriesController < ApplicationController
  before_action :set_groupe, only: %i[index]
  before_action :set_chatroom, only: %i[index]

  def index
    @messages = @chatroom.messages
  end

  private

  def set_chatroom
    @chatroom = Messagerie.find_by(groupe_id: params[:groupe_id])
  end

  def set_groupe
    @groupe = Groupe.find(params[:groupe_id])
  end
end
