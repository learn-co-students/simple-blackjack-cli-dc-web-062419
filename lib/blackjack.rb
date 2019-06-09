def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
#  puts number
  number
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    new_card = deal_card
    card_total = card_total + new_card
    return card_total
  elsif user_input == "s"
  #  puts "you decided to stay at #{card_total}"
    return card_total
  else
    invalid_command
    prompt_user
    return card_total
  end
#  return card_total
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 card_total = 0
 welcome
 card_total = initial_round
 until card_total >= 21
   card_total = hit?(card_total)
   display_card_total(card_total)
 end
 end_game(card_total)
end
    

