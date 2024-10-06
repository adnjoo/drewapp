class ChatsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @response = session.delete(:chat_response)
  end

  def create
    service = OpenaiService.new
    @response = service.chat(params[:prompt])

    session[:chat_response] = @response

    redirect_to chats_home_path
  end
end
