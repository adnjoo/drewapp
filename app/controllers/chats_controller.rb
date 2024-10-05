class ChatsController < ApplicationController
  def new
    @response = ""
  end

  def create
    service = OpenaiService.new
    @response = service.chat(params[:prompt])
    # Log response to verify
    Rails.logger.info("OpenAI Response: #{@response}")

    # Re-render the form with @response
    render :new
  end
end
