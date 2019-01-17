require 'pry'

class Move
  attr_accessor :rock, :paper, :scissors

  VALUES = ['rock', 'paper', 'scissors']

  # human player:
  # self.move = Move.new(choice)
  def initialize(value)
    @value = value
    set_value
  end

  def set_value
    case @value
    when 'rock' then @rock = Rock.new
    when 'paper' then @paper = Paper.new
    when 'scissors' then @scissors = Scissors.new
    end
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def scissors?
    @value == 'scissors'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def to_s
    @value
  end
end

class Rock; end
# because we are in an instance, we can use the rock? instance method

class Paper; end

class Scissors; end

class Player
  attr_accessor :move, :name, :score, :moves

  def initialize
    set_name
    set_player
    @score = 0
    # It is generally considered to be bad practice to have too much logic in the
    # initialize method, so we will move the name setting logic to a separate method
    # The logic for setting a name and making a choice is now handled by the Human an Computer subclasses
  end
end

class Human < Player
  def initialize
    super
    @moves = []
  end

  def set_name
    name = ""
    loop do
      puts "Please enter your name:"
      name = gets.chomp
      break unless name.empty?
      puts "Sorry, must enter a value."
    end
    self.name = name
  end

  def set_player
    @is_human = true
  end

  # we can set state for each Human/Computer object in subclasses

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, that is not a valid choice!"
    end
    self.move = Move.new(choice) # We create a new move object (collaborator) and set give it state
  end

  def move_history
    puts "Number of times #{self.name} chose rock: #{self.number_of_times_rock_was_chosen}."
    puts "Number of times #{self.name} chose paper: #{self.number_of_times_paper_was_chosen}."
    puts "Number of times #{self.name} chose scissors: #{self.number_of_times_scissors_was_chosen}."
  end

  def number_of_times_rock_was_chosen
    moves.select { |move| move.rock? }.size
  end

  def number_of_times_paper_was_chosen
    moves.select { |move| move.paper? }.size
  end

  def number_of_times_scissors_was_chosen
    moves.select { |move| move.scissors? }.size
  end
end

class Computer < Player
  attr_accessor :human_player_moves
  attr_reader :personality

  def initialize
    super
    @moves = []
    @human_player_moves = {rock: 0, paper: 0, scissors: 0}
    set_personality
  end

  def set_name
    self.name = ['Arcadio', 'Aureliano', 'Remedios'].sample
  end

  def set_personality
    if name == 'Arcadio'
      @personality = 'rock only'
    elsif name == 'Aureliano'
      @personality = 'avoid paper'
    else
      @personality = 'balanced'
    end
  end

  def set_player
    @is_human = false
  end

  def choose
    if personality == 'rock only'
      self.move = Move.new('rock')
    elsif personality == 'avoid paper'
      if (human_player_moves[:rock] > human_player_moves[:paper]) && (human_player_moves[:rock] > human_player_moves[:scissors])
        self.move = Move.new('scissors')
      elsif (human_player_moves[:scissors] > human_player_moves[:paper]) && (human_player_moves[:scissors] > human_player_moves[:rock])
        self.move = Move.new('rock')
      end
    else
      if (human_player_moves[:rock] > human_player_moves[:paper]) && (human_player_moves[:rock] > human_player_moves[:scissors])
        self.move = Move.new('paper')
      elsif (human_player_moves[:paper] > human_player_moves[:scissors]) && (human_player_moves[:paper] > human_player_moves[:rock])
        self.move = Move.new('scissors')
      elsif (human_player_moves[:scissors] > human_player_moves[:paper]) && (human_player_moves[:scissors] > human_player_moves[:rock])
        self.move = Move.new('rock')
      else
        self.move = Move.new(Move::VALUES.sample)
      end
      # The computer's move is set by creating a Move object and initializing it with one of the strings of the VALUES constant.
    end
  end

  def move_history
    puts "Number of times #{self.name} chose rock: #{self.number_of_times_rock_was_chosen}."
    puts "Number of times #{self.name} chose paper: #{self.number_of_times_paper_was_chosen}."
    puts "Number of times #{self.name} chose scissors: #{self.number_of_times_scissors_was_chosen}."
  end

  def number_of_times_rock_was_chosen
    moves.select { |move| move.rock? }.size
  end

  def number_of_times_paper_was_chosen
    moves.select { |move| move.paper? }.size
  end

  def number_of_times_scissors_was_chosen
    moves.select { |move| move.scissors? }.size
  end
end

class RPSGame
  attr_accessor :human, :computer, :move_history

  def initialize
    @human = Human.new         # object of the Human class
    @computer = Computer.new   # object of the Computer class (no longer needs a Player object that takes in :computer as an argument)
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors: OOP Edition."
  end

  def display_goodbye_message
    puts "Thank you for playing, hope to see you soon!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def tally_score_total
    if (human.move.rock && computer.move.scissors) ||
        (human.move.paper && computer.move.rock) ||
        (human.move.scissors && computer.move.paper)
      human.score += 1
    elsif (human.move.rock && computer.move.paper) ||
           (human.move.scissors && computer.move.rock) ||
           (human.move.paper && computer.move.scissors)
      computer.score += 1
    else
      puts "It’s a tie!"
    end
    puts "Current Score:"
    puts "#{human.name}: #{human.score}"
    puts "#{computer.name}: #{computer.score}"
  end

  def winner?
    human.score == 10 || computer.score == 10
  end

  def display_winner
    puts "#{human.name} won!" if human.score == 10
    puts "#{computer.name} won!" if computer.score == 10
  end

  def record_human_player_moves
    computer.human_player_moves[:rock] = human.number_of_times_rock_was_chosen
    computer.human_player_moves[:paper] = human.number_of_times_paper_was_chosen
    computer.human_player_moves[:scissors] = human.number_of_times_scissors_was_chosen
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end
    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def reset_player_scores
    human.score = 0
    computer.score = 0
  end

  def record_move_history
    human.moves << human.choose # Instance method on the Player class. The way these methods run suggests that some other state is being set and modified.
    computer.moves << computer.choose # The choose method should modify some state within the human object.
  end

  def display_game_stats
    human.move_history
    puts ""
    computer.move_history
  end

  def play
    display_welcome_message
    loop do
      reset_player_scores
      loop do
        record_move_history
        display_moves
        tally_score_total
        record_human_player_moves
        break if winner?
      end
      display_winner          # knows how to access the state that is set/modified on lines 58 and 59.
      display_game_stats
      break unless play_again?
    end
    display_goodbye_message
  end
  # display_winner has access to the instance variables @human and @computer
  # @human and @computer has access to the @move instance variable that is set in the Player class
end

RPSGame.new.play # instantiates a new RPSGame object and the object calls the "play" instance method
