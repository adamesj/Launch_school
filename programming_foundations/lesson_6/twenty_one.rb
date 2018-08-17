require 'pry'

suits   = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
cards   = ['Ace', '2', '3', '4', '5', '6', '7', '8',
           '9', '10', 'Jack', 'Queen', 'King']

def prompt(string)
  puts string
end

def opening_game_prompt
  prompt "Welcome to Twenty-One! Dealer, please deliver the cards..."
  prompt "-------------------------"
  prompt ""
end

def initialize_deck(suits, cards)
  deck = []
  suits.each do |suit|
    cards.each do |card|
      deck << [suit, card]
    end
  end
  deck
end

def deal_initial_cards(deck, hand)
  deck.shuffle!
  2.times do
    hand << deck.shift
  end
end

def deal_additional_card(deck, hand)
  deck.shuffle!
  hand << deck.shift
end

def total(cards)
  values = cards.map { |card| card[1] }
  # create an array of all the card values
  sum = 0
  values.each do |value|
    sum = if value == "Ace"
            sum + 11
            # if one of the values is 'Ace' add 11 to the sum
          elsif value.to_i == 0 # J, Q, K
            sum + 10
            # if one of the values is J, Q, K then add 10 to the sum
          else
            sum + value.to_i
            # if cards are have no aces of J, Q, K then add the values
          end
  end

  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > 21 # one ace  means subtract 10 from the sum
  end

  sum
end

def display_player_total(hand)
  prompt "You currently have:"

  dealt_hand = hand.map do |suit, card|
    if hand[-1][-1] == card
      "and the #{card} of #{suit}"
    else
      "#{card} of #{suit}"
    end
  end
  prompt "You have the #{dealt_hand.join(', ')}. Your total is #{total(hand)}."
  prompt "-------------------------"
end

def busted?(hand)
  hand > 21
end

def dealer_stays?(total)
  total >= 17 ? true : false
end

def dealers_other_cards(hand)
  other_cards = hand.count - 1
  if other_cards == 1
    "#{other_cards} other card."
  else
    "#{other_cards} other cards."
  end
end

def display_dealer_total(hand)
  prompt "The dealer currently has:"
  prompt "The #{hand[0][1]} of #{hand[0][0]} and #{dealers_other_cards(hand)}"
  prompt "-------------------------"
end

def display_opening_player_totals(dealer_cards, player_cards)
  prompt display_dealer_total(dealer_cards).to_s
  prompt display_player_total(player_cards).to_s
end

loop do
  system 'clear'
  player_cards = []
  dealer_cards = []
  deck = initialize_deck(suits, cards)
  answer = nil
  deal_initial_cards(deck, player_cards)
  deal_initial_cards(deck, dealer_cards)
  opening_game_prompt

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)
  display_opening_player_totals(dealer_cards, player_cards)

  loop do
    puts "hit or stay?"
    answer = gets.chomp
    break if answer == 'stay' || busted?(player_total)
    deal_additional_card(deck, player_cards)
    player_total = total(player_cards)
    break if busted?(player_total)
    display_player_total(player_cards)
  end

  if busted?(player_total) # If player bust, dealer wins.
    prompt "You've busted with #{player_total}. Dealer wins!"
  else
    prompt "You chose to stay at #{total(player_cards)}."
    loop do
      break if dealer_stays?(dealer_total) || busted?(dealer_total)
      deal_additional_card(deck, dealer_cards)
      dealer_total = total(dealer_cards)
      break if busted?(dealer_total)
    end

    if busted?(dealer_total)
      prompt "Dealer busted with #{dealer_total}. You win!"
    else
      prompt "Dealer chose to stay at #{dealer_total}."
    end

    if dealer_stays?(dealer_total) && !busted?(dealer_total)
      if player_total > dealer_total
        prompt "Player won!"
      elsif dealer_total > player_total
        prompt "Dealer won!"
      elsif player_total == dealer_total
        prompt "It's a draw!"
      end
    end
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
