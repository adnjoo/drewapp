class ChatsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @response = ""
  end

  def create
    service = OpenaiService.new
    @response = service.chat(params[:prompt])

    render :new
  end
end
