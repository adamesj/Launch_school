require 'pry'

=begin
  Game Overview:

  - Both participants are initially dealt 2 cards from a 52-card deck.

  - The player takes the first turn, and can "hit" or "stay".
  - If the player busts, he loses.
  - If he stays, it's the dealer's turn.

  - The dealer must hit until his cards add up to at least 17.
  - If he busts, the player wins.
  - If both player and dealer stays, then the highest total wins.

  - If both totals are equal, then it's a tie, and nobody wins.

  Nouns: card, player, dealer, participant, deck, game
  Verbs: deal, hit, stay, busts, total
=end

module Hand
  def hit(deck)
    self.cards << deck.cards.pop
  end

  def stay?
    return true
  end

  def busted?
    total > 21
  end

  def total
    sum = 0
    values = self.cards.map { |card| card.value }
    values.each do |value|
      sum += if value == 'A'
              11
             elsif value.to_i == 0
              10
             else
              value.to_i
            end
    end
    values.select {|value| value == 'A'}.count.times do
      sum -= 10 if sum > 21
    end
    sum
    # we need to know about "cards" in order to produce a total
  end
end

class Player
  include Hand

  attr_accessor :cards
  attr_reader :name

  def initialize
    @name = set_name
    @cards = []
  end

  def set_name
    answer = nil
    loop do
      puts "Please enter your name"
      answer = gets.chomp
      break unless answer == ''
      puts "Sorry, you cannot enter an empty space."
    end
    answer
  end
end

class Dealer
  include Hand

  NAMES = ['Luther', 'Diego', 'Allison', 'Klaus', 'Five', 'Ben', 'Vanya']

  attr_accessor :cards
  attr_reader :name

  def initialize
    @name = NAMES.sample
    @cards = []
  end
end

class Deck
  # a deck is comprised of 52 cards
  attr_accessor :cards

  def initialize
    @cards = []
    new_cards = Card::SUITS.product(Card::VALUES)
    new_cards.each do |new_card|
      @cards << Card.new(new_card[0], new_card[1])
    end
    @cards.shuffle!
  end
end

class Card
  # a single card is part of a 52-card deck
  # a card can belong to one of four suits
  # a card can have one of thirteen values
  SUITS = ['C', 'D', 'H', 'S']
  VALUES = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

  attr_reader :value

  # when you create a card, pop a suit/value from the array

  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end

class TwentyOne
  attr_reader :player, :dealer
  attr_accessor :deck

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def reset
    self.deck = Deck.new
    player.cards = []
    dealer.cards = []
  end

  def play_again?
    answer = nil

    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if ['y', 'n'].include?(answer)

      puts "Sorry that is not a valid option."
    end

    answer
  end

  def start
    # sequence of game steps
    loop do
      deal_cards
      show_initial_cards

      player_turn
      if player.busted?
        show_busted
        if (play_again? == 'y')
          reset
          next
        else
          break
        end
      end

      dealer_turn
      if dealer.busted?
        show_busted
        if (play_again? == 'y')
          reset
          next
        else
          break
        end
      end

      show_result
      (play_again? == 'y') ? reset : break
    end

    puts "Thanks for playing!"
  end

  def deal_cards
    2.times do
      player.cards << deck.cards.pop
      dealer.cards << deck.cards.pop
    end
  end

  def show_initial_cards
    puts "#{dealer.name} has #{dealer.cards[0].value} and ?"
    puts "#{player.name} has #{player.cards[0].value} and #{player.cards[1].value}"
  end

  def player_turn
    answer = nil

    loop do
      puts "Would you like to (h)it or (s)tay?"
      answer = gets.chomp.downcase
      puts "That is not a valid choice!" unless ["h", "s"].include?(answer)
      if answer == 'h'
        player.hit(deck)
        puts "#{player.name} hits!"
        puts "#{player.name}'s total is now #{player.total}."
        break if player.busted?
      elsif answer == 's'
        puts "#{player.name} stays!"
        break
      end
    end
  end

  def dealer_turn
    if dealer.total < 17
      dealer.hit(deck)
      puts "#{dealer.name} hits!"
      dealer.busted?
    else
      puts "#{dealer.name} stays!"
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
      puts "#{player.name} won with #{player.total} to #{dealer.name}'s #{dealer.total}! "
    elsif dealer.total > player.total
      puts "#{dealer.name} won with #{dealer.total} to #{player.name}'s #{player.total}!"
    else
      puts "It's a tie! #{player.total} to #{dealer.total}"
    end
  end
end

TwentyOne.new.start
