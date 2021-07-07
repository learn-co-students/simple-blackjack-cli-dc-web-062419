def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return (rand*11 + 1).to_i
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
    2.times do
      deal_card
    end
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
      card_total
      else
       invalid_command
    end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  card_sum = initial_round
   until card_sum > 21 do
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
