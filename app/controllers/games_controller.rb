class GamesController < ApplicationController
  def index
    @target_number = rand(1..100)
    @tries = 0
    @max_tries = 5
  end

  def guess
    @target_number = params[:target_number].to_i
    @guess = params[:guess].to_i
    @tries = params[:tries].to_i + 1
    @max_tries = 5

    if @guess == @target_number
      @message = "Congratulations! You guessed the number in #{@tries} tries."
    elsif @tries == @max_tries
      @message = "Sorry, you've used all your tries. The correct number was #{@target_number}."
    elsif @guess < @target_number
      @message = "Too low!"
    else
      @message = "Too high!"
    end

    render :index
  end
end
