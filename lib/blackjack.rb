def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return Random.rand(1...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == 's'
    return total
  elsif answer == 'h'
    return total + deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
    total = hit?(total)
    display_card_total(total)
    if total > 21
      end_game(total)
    end
  end
end
    
