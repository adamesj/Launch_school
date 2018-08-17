require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7]] +
                [[3, 2, 1], [6, 5, 4], [9, 8, 7], [7, 4, 1]] +
                [[2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] +
                [[8, 5, 2], [9, 6, 3], [9, 5, 1], [7, 5, 3]]


# Display the initial empty 3x3 board.
puts 'Welcome to Tic Tac Toe!'

def prompt(string)
  puts string
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |    "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |    "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER } # {1 => '', 2 => ''....}
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', conjunction='or')
  joined = ''
  arr.each do |a|
    if a == arr.last && arr.length > 1
      joined << conjunction + ' ' + a.to_s
    elsif arr.length == 2
      joined << a.to_s + ' '
    elsif arr.length == 1
      joined << a.to_s
    else
      joined << a.to_s + delimiter
    end
  end
  joined
end

def player_marks_a_square(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1]).count(PLAYER_MARKER) == 2
      brd.select{|k,v| line.include?(k) && v == ' '}.keys.first
    else
      nil
    end
  end
end

def complete_winning_line(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1]).count(COMPUTER_MARKER) == 2
      brd.select{|k,v| line.include?(k) && v == ' '}.keys.first
    else
      nil
    end
  end
end

def choose_best_available_square(brd)
  if empty_squares(brd).include?(5)
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def computer_marks_a_square(brd)
  complete_winning_line(brd)
  find_at_risk_square(brd)
  choose_best_available_square(brd)
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # turns the value into a boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3 # can also use *line(splat operator which passes in each element in the array)
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# check the placement of the player marker on the board
# check if there are two placements on a winning line
# if there is, fill in the last space with the computer marker
# else place somewhere random

def round_results(player_score, computer_score)
  prompt "Player Score: #{player_score}. Computer Score: #{computer_score}."
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board
  loop do
    display_board(board)
    round_results(player_score, computer_score)
    # Ask user to mark a square.
    player_marks_a_square(board)
    break if someone_won?(board) || board_full?(board)
    # Computer marks a square.
    computer_marks_a_square(board)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    if detect_winner(board) == 'Player'
      player_score += 1
      prompt "#{detect_winner(board)} won!"
    else
      computer_score += 1
      prompt "#{detect_winner(board)} won!"
    end
  else
    prompt "It's a tie!"
  end

  sleep(1)

  if player_score == 5 || computer_score == 5
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing Tic Tac Toe!"
