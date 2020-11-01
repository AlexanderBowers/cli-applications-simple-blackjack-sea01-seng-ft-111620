require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
card = rand(1..11)
card
end

def display_card_total(card_total)
  puts  "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
total = deal_card + deal_card
display_card_total(total)
total
end

def hit?(total)
input = ""
prompt_user
input = get_user_input
  while !(input == "s" || input == "h")
    invalid_command
    prompt_user
    input = get_user_input
  end
  while input == "s"
    prompt_user
    input get_user_input
  end
  

end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until display_card_total(hit?) > 21
    hit?
  end
end_game
end
