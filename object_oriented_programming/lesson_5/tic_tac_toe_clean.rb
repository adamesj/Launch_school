require 'pry'

class Board
  attr_reader :squares

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]
  MIDDLE_SQUARE = 5

  def initialize
    @squares = {}
    reset
  end

  def []=(key, marker)
    @squares[key].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      return squares.first.marker if three_identical_markers?(squares)
    end
    nil
  end

  def at_risk_square
    # iterate through each winning line
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if two_identical_markers?(squares)
        empty_marker = squares.select(&:unmarked?).first
        return @squares.key(empty_marker)
      end
    end
    nil
    # if the markers of two squares are identical
    # return the position of the square that is not identical
  end

  def winning_square_for_computer
    # How do we define a winning square being available?
    # In a line, if two markers are equal to the computer's marker and the other marker is empty
    # If this condition is met, change the empty marker to the computer's marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      return @squares.key(empty_square(squares)) if two_identical_markers?(squares)
    end
    nil
  end

  def empty_square(squares)
    # detects the square that is empty
    squares.select { |square| square.marker == " " }.first
  end

  def middle_square_available?
    @squares[MIDDLE_SQUARE].unmarked?
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  def draw
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
    markers.all? { |marker| marker == markers.first }
  end

  def two_identical_markers?(squares)
    markers = squares.select(&:marked?).map(&:marker)
    return false if markers.size != 2
    markers.all? { |marker| marker == markers.first }
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
  end
end

class Player
  attr_accessor :marker, :name
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  VALID_CHOICES = ['player', 'computer']
  COMPUTER_NAMES = ['Phil', 'Julia', 'Linda']
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new
    @computer = Player.new
    @human_score = 0
    @computer_score = 0
  end

  def play
    clear
    display_welcome_message

    loop do
      set_player_markers
      set_current_marker
      set_player_names
      reset_score

      loop do
        display_board

        loop do
          display_current_score
          current_player_moves
          break if board.someone_won? || board.full?

          clear_screen_and_display_board
        end

        display_result
        break if (@human_score == 5) || (@computer_score == 5)
        reset
      end

      break unless play_again?
      reset
      display_play_again_message
    end

    display_goodbye_message
  end

  private

  def set_player_names
    set_human_player_name
    set_computer_player_name
  end

  def set_computer_player_name
    @computer.name = COMPUTER_NAMES.sample
  end

  def clear
    system 'clear'
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe: OOP Edition"
    puts "First to 5 points wins!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing. See you next time!"
  end

  def display_current_score
    puts "#{human.name}'s score is #{@human_score}. #{computer.name}'s score is #{@computer_score}."
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def set_player_markers
    puts ""
    puts "Would you like to be 'X' or 'O'?"
    marker = nil
    loop do
      marker = gets.chomp.upcase
      break if ['X', 'O'].include?(marker)
      prompt "That is not a valid choice"
    end

    if marker == HUMAN_MARKER
      human.marker = HUMAN_MARKER
      computer.marker = COMPUTER_MARKER
    elsif marker == COMPUTER_MARKER
      human.marker = COMPUTER_MARKER
      computer.marker = HUMAN_MARKER
    end
  end

  def set_human_player_name
    puts ""
    puts "Please enter your name:"
    player_name = gets.chomp.capitalize
    @human.name = player_name
  end

  def display_board
    puts "#{human.name} is #{human.marker}. #{computer.name} is #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def display_player_choice_message
    choice_prompt = <<-MSG
      Select who will go first: #{VALID_CHOICES.join(' or ')}
      1) 'p'    for player
      2) 'cpu'  for computer
    MSG

    puts choice_prompt
  end

  def convert_abbreviated_selection(choice)
    case choice
    when 'p'
      'player'
    when 'cpu'
      'computer'
    end
  end

  def set_player_choice
    choice = nil

    loop do
      display_player_choice_message
      choice = gets.chomp
      choice = convert_abbreviated_selection(choice)

      if choice == 'computer' || choice == 'player'
        break
      else
        prompt "That is not a valid choice"
      end
    end
    choice
  end

  def set_current_marker
    @current_marker = set_player_choice == 'player' ? human.marker : computer.marker
  end

  def human_moves
    joinor(board.unmarked_keys)
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that is not a valid choice."
    end
    board[square] = human.marker
  end

  def joinor(spaces, delimiter=',', conjunction='or')
    num_of_elements = spaces.size
    if num_of_elements == 1
      puts spaces.join
    elsif num_of_elements < 3
      puts spaces.join(" #{conjunction} ")
    else
      last_element = spaces.pop
      puts spaces.join("#{delimiter} ") + " #{conjunction} " + "#{last_element}"
    end
  end

  def computer_moves
    if board.winning_square_for_computer
      # set the square to the winning square
      square = board.winning_square_for_computer
    elsif board.at_risk_square
      square = board.at_risk_square
    elsif board.middle_square_available?
      square = 5
    else
      square = board.unmarked_keys.sample
    end
    # return the square that allows the computer to win
    # return the square that can finish a winning line
    # computer then marks that square
    board[square] = computer.marker
  end

  def human_turn?
    @current_marker == human.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = computer.marker
    else
      computer_moves
      @current_marker = human.marker
    end
  end

  def display_result
    clear_screen_and_display_board
    case board.winning_marker
    when human.marker
      puts "#{human.name} won!"
      @human_score += 1
    when computer.marker
      puts "#{computer.name} won!"
      @computer_score += 1
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
    @current_marker = nil
    clear
  end

  def reset_score
    @human_score = 0
    @computer_score = 0
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
