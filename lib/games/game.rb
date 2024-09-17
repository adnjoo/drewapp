# Simple number guessing game

# Set the target number to guess
target_number = rand(1..100)
tries = 0
max_tries = 5

puts "Welcome to the number guessing game!"
puts "You have #{max_tries} tries to guess the correct number between 1 and 100."

while tries < max_tries
  print "Enter your guess: "
  guess = gets.chomp.to_i
  tries += 1

  if guess == target_number
    puts "Congratulations! You guessed the number in #{tries} tries."
    break
  elsif guess < target_number
    puts "Too low!"
  else
    puts "Too high!"
  end

  if tries == max_tries
    puts "Sorry, you've used all your tries. The correct number was #{target_number}."
  end
end
