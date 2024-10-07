class ChatsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @response = session.delete(:chat_response)
    @selected_model = session.delete(:selected_model) || "gpt-4o-mini"
  end

  def create
    service = OpenaiService.new(params[:model] || "gpt-4o-mini")
    @response = service.chat(params[:prompt])

    session[:chat_response] = @response
    session[:selected_model] = params[:model]

    redirect_to chats_home_path
  end
end
