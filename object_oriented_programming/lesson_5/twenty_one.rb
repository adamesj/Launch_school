require 'pry'

class Participant
  attr_accessor :name, :deck, :hand

  def initialize(deck)
    @hand = []
    @deck = deck
    set_name
  end

  def hit
    # add a card to the participant's hand (array)
    hand << deck.deal
  end

  def busted?
    total > 21
  end

  def cards
    hand.map { |card| card[1] }
  end

  def show_hand
    puts "---- #{name}'s Hand ----"
    cards.each do |card|
      puts "=> #{card}"
    end
    puts "=> Total: #{total}"
    puts ""
  end

  def total
    # map the current hand to just it's value
    values = hand.map { |card| card[1] }

    # initialize sum at 0
    sum = 0
    # iterate through each value
    values.each do |value|
      sum += if value == 'Ace'
               11
             elsif value.to_i == 0 # J, Q, K
               10
             else
               value.to_i # all other cards
             end
    end

    values.select { |value| value == 'Ace' }.count.times do
      sum -= 10 if sum > 21 # correct for Ace value
    end

    sum
  end
end

class Player < Participant
  def set_name
    name = ''
    loop do
      puts "What's your name?"
      name = gets.chomp
      break unless name.empty?

      puts "Sorry, must enter a value."
    end
    self.name = name
  end
end

class Dealer < Participant
  NAMES = ['Luther', 'Diego', 'Vanya', 'Allison']

  def set_name
    self.name = NAMES.sample
  end
end

class Card
  SUITS = ['H', 'S', 'D', 'C']
  FACES = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def to_s
    "The #{face} of #{suit}"
  end

  def face
    case @face
    when 'J' then 'Jack'
    when 'Q' then 'Queen'
    when 'K' then 'King'
    when 'A' then 'Ace'
    else
      @face
    end
  end

  def suit
    case @suit
    when 'H' then 'Hearts'
    when 'D' then 'Diamonds'
    when 'S' then 'Spades'
    when 'C' then 'Clubs'
    end
  end

  def ace?
    face == 'Ace'
  end

  def king?
    face == 'King'
  end

  def queen?
    face == 'Queen'
  end

  def jack?
    face == 'Jack'
  end
end

class Deck
  attr_reader :cards

  def initialize
    @cards = Card::SUITS.product(Card::FACES).shuffle
  end

  def deal
    cards.shift
  end
end

class TwentyOne
  attr_accessor :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new(@deck)
    @dealer = Dealer.new(@deck)
  end

  def reset
    self.deck = Deck.new
    @player.hand = []
    @dealer.hand = []
  end

  def start
    display_welcome_message
    loop do
      deal_cards
      show_initial_cards
      player_turn
      show_busted if player.busted?
      dealer_turn
      show_busted if dealer.busted?
      show_result
      play_again? ? reset : break
    end
  end

  def deal_cards
    2.times do
      player.hand << deck.deal
      dealer.hand << deck.deal
    end
  end

  def show_initial_cards
    puts "Dealer has: #{dealer.cards.first} and ?"
    puts "Player has: #{player.cards.join(' and ')}"
    puts ""
  end

  def player_turn
    puts "#{player.name}'s turn..."

    loop do
      puts "Would you like to (h)it or (s)tay?"
      response = nil
      loop do
        response = gets.chomp.downcase
        break if ["h", "s"].include?(response)

        puts "Sorry, you must enter 'h' or 's'."
      end

      if response == 's'
        puts "#{player.name} stays!"
        break
      elsif player.busted?
        break
      else
        player.hit
        puts "#{player.name} hits!"
        player.show_hand
        break if player.busted?
      end
    end
  end

  def dealer_turn
    loop do
      break if dealer.total >= 17

      puts "Dealer hits!"
      dealer.hand << deck.deal
      dealer.show_hand
    end
  end

  def show_busted
    if player.busted?
      puts "Looks like #{player.name} busted! #{dealer.name} wins!"
    elsif dealer.busted?
      puts "Looks like #{dealer.name} busted! #{player.name} wins!"
    end
  end

  def show_result
    if player.total > dealer.total
      puts "#{player.name} wins!"
    elsif dealer.total > player.total
      puts "#{dealer.name} wins!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    response = nil
    loop do
      puts "Would you like to play again? (y/n)"
      response = gets.chomp.downcase
      break if ['y', 'n'].include?(response)

      puts "Sorry, must be y or n."
    end
    response == 'y'
  end

  def display_welcome_message
    puts "Welcome to Twenty-One: OOP Edition"
    puts ""
  end
end

TwentyOne.new.start
