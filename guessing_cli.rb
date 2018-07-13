require 'pry'

def run_guessing_game
response = ""

  until response == "exit" do
    puts "Guess a number between 1 and 6."
    response = gets.chomp
    i_response = response.to_i

    if i_response <= 6 && i_response > 0
      generate_rand (i_response)
    elsif response == "exit"
      exit_guessing
    end

  end
end


def exit_guessing
  puts "Goodbye!"
end


def generate_rand integer
  i_random = rand(1..6)
  if integer == i_random
    puts "You guessed the correct number!"
  else
    puts "The computer guessed #{i_random}."
  end
end
