class ChatsController < ApplicationController
  def new
    @response = ""
  end

  def create
    service = OpenaiService.new
    @response = service.chat(params[:prompt])

    render :new
  end
end
