# !/usr/local/bin/ruby
# frozen_string_literal: true

MAX_GUESSES = 3
continue_playing = true

puts "\nWelcome to the Guessing Game!"
puts "I'll choose a number between 1 and 10"
puts "You have #{MAX_GUESSES} chances to guess it"

while continue_playing
  my_number = rand(10) + 1

  1.upto(MAX_GUESSES) do |guess_num|
    print "\nGuess #{guess_num}: "
    guess = gets.chomp

    if guess.to_i == my_number 
      puts "\nGreat work"
      puts "My number was #{my_number}"
      break
    else
      puts "Hum, that wasn't it"
      if guess_num == MAX_GUESSES
        puts "\nYou lose"
        puts "My number was #{my_number}"
      end
    end
  end

  puts "\nContinue playing? [Y/N]"
  break if gets.chomp.downcase != 'y'
  continue_playing = true
end

puts "\nThanks for playing\n\n"
