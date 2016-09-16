def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"

  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  n = gets.chomp
  n
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  total = 0
  2.times do
  deal_card
  total += deal_card
end
display_card_total (total)
total
end

def hit?(n)
  prompt_user
  hs  = get_user_input

  if hs == "s"
    n
  elsif hs == "h"
    n += deal_card
    n
  else
    invalid_command
  end
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command".
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  n = initial_round
  until n > 21 do
    n = hit?(n)
    display_card_total(n)
  end
end_game(n)
end
