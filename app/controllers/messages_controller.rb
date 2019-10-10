class MessagesController < ApplicationController
  before_action :set_messagerie, only: %i[create]

  def create
    message = Message.new(message_params)
    message.user_id = current_user.id
    message.messagerie_id = @messagerie.id
    message.save!
    redirect_back(fallback_location: groupe_messageries_path)
  end

  private

  def message_params
    params.require(:message).permit(:contenu)
  end

  def set_messagerie
    @messagerie = Messagerie.find_by(groupe_id: params[:groupe_id])
  end
end
