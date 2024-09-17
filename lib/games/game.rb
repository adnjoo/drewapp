class NumberGuessingGame
  attr_reader :target_number, :tries, :max_tries

  def initialize
    @target_number = rand(1..100)
    @tries = 0
    @max_tries = 5
  end

  def guess(guess)
    @tries += 1
    return :correct if guess == target_number
    return :too_low if guess < target_number
    :too_high
  end

  def game_over?
    tries >= max_tries
  end

  def correct_answer
    target_number
  end
end
