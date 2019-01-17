require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals
  def initialize
    @squares = {} #{1 => Square.new('X'), 2 => Square.new(' ')}
    reset
  end

  def []=(key, marker)
    @squares[key].marker = marker
    # this replaces the set_square_at method
  end

  # def set_square_at(key, marker)
  #   @squares[key].marker = marker
  #   # reassigns the current marker on the square selected
  # end

  def unmarked_keys
    # returns an array of keys that have not been marked
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    # check if all squares are marked
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
    # !! converts the return value of winning_marker into a boolean value
    # we are checking for the truthiness of the return value of winning_marker
    # if winning_marker returns a marker, this will return true
    # if winning_marker returns nil, this will return false
  end

  # def count_human_marker(squares)
    # squares represents an array of square objects
    # squares.map(&:marker).count(TTTGame::HUMAN_MARKER)
    # we are transforming the array of square objects
    # 1) we call marker on each of them                         => squares.map(&:marker)
    # 2) this will return a new array of markers
    # 3) then we use the count method to count how many times   => .count(TTTGame::HUMAN_MARKER)
    # the TTTGame::HUMAN_MARKER string appears in the array
  # end

  # def count_computer_marker(squares)
  #   squares.map(&:marker).count(TTTGame::COMPUTER_MARKER)
  # end

  def winning_marker
    # returns the winning marker or nil
    # if it returns nil, there is no winner
    WINNING_LINES.each do |line|
    # line is a 3 element array that represents a winning line
      # if count_human_marker(@squares.values_at(*line)) == 3
      #   return TTTGame::HUMAN_MARKER
      # elsif count_computer_marker(@squares.values_at(*line)) == 3
      #   return TTTGame::COMPUTER_MARKER
      # end
      squares = @squares.values_at(*line)
      return squares.first.marker if three_identical_markers?(squares)
    end
    nil
  end

  def reset
    # reset the values of the @squares hash into new (empty) squares
    (1..9).each {|key| @squares[key] = Square.new}
  end

  def draw
    # this method should only be concerned with one thing: drawing the state of the board.
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}  "
    puts "     |     |"
    puts "------------------"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}  "
    puts "     |     |"
    puts "------------------"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}  "
    puts "     |     |"
  end

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).map(&:marker)
    return false if markers.size != 3
    markers.all? {|marker| marker == markers.first}
  end
end

class Square
  INITIAL_MARKER = " "
  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def marked?
    marker != INITIAL_MARKER
  end

  def unmarked?
    marker == INITIAL_MARKER
    # check whether the marker is equal to the INITIAL_MARKER which
    # is an empty string
  end
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  FIRST_TO_MOVE = HUMAN_MARKER
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = FIRST_TO_MOVE
  end

  def play
    clear
    display_welcome_message

    loop do
      clear_screen_and_display_board

      loop do
        # human_moves
        # break if board.someone_won? || board.full?
        # computer_moves
        # break if board.someone_won? || board.full?
        current_player_moves
        break if board.someone_won? || board.full?
        clear_screen_and_display_board
      end
      display_result #will detect the board to see who won
      break unless play_again?
      reset
      display_play_again_message
    end

    display_goodbye_message
  end

  private

  def clear
    system 'clear'
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe: OOP Edition"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing. See you next time!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def display_board
    puts "You're #{human.marker}. Computer is #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def human_moves
    puts "Please choose a square (#{board.unmarked_keys.join(', ')}):"
    square = nil
    loop do
      square = gets.chomp.to_i # we need an integer for the break condition below
      break if board.unmarked_keys.include?(square) # break if the player input is between 1-9
      puts "Sorry, that is not a valid choice."
    end
    # after the loop we can set that square with a marker
    # the responsibility will fall on the board class
    # set_square_at gets the number from the square variable and
    # the marker from the human object
    board[square] = human.marker
  end

  def computer_moves
    square = board.unmarked_keys.sample
    board[square] = computer.marker
    # board.set_square_at(square, computer.marker)
  end

  def human_turn?
    @current_marker = HUMAN_MARKER
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker == COMPUTER_MARKER
    else
      computer_moves
      @current_marker == HUMAN_MARKER
    end
  end

  def display_result
    clear_screen_and_display_board
    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
    else
      puts "It's a draw!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if ['y', 'n'].include?(answer)
      puts "Sorry, must be y or n."
    end
    answer == 'y'
  end

  def reset
    board.reset
    @current_marker = FIRST_TO_MOVE
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
