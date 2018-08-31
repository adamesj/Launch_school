INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7]] +
                [[3, 2, 1], [6, 5, 4], [9, 8, 7], [7, 4, 1]] +
                [[2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] +
                [[8, 5, 2], [9, 6, 3], [9, 5, 1], [7, 5, 3]]
VALID_CHOICES = ['player', 'computer']

def prompt(string)
  puts string
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
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
  brd.keys.select { |num| brd[num] == INITIAL_MARKER } # Returns squares that have not been marked.
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

def defend_against_player(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 # player marked two spaces
      line.each do |position|
        brd[position] = COMPUTER_MARKER unless brd[position] == PLAYER_MARKER
      end
    end
  end
end

def complete_winning_square(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 # computer marked two spaces
      line.each do |position|
        brd[position] = COMPUTER_MARKER unless brd[position] == PLAYER_MARKER
      end
    end
  end
end

def mark_middle_square(brd)
  brd[5] = COMPUTER_MARKER if brd[5] == INITIAL_MARKER
end

def mark_square_at_random(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def computer_marks_a_square(brd)
  complete_winning_square(brd)
  defend_against_player(brd)
  return if mark_middle_square(brd)
  mark_square_at_random(brd) unless brd.values.count(COMPUTER_MARKER) == brd.values.count(PLAYER_MARKER)
end

def board_full?(brd)
  empty_squares(brd).empty? # Returns true when all squares have been marked.
end

def someone_won?(brd)
  !!detect_winner(brd)
  # turns the value into a boolean
  # forcibly turns the string 'player' or 'computer' into true
  # if detect_winner(brd) returns nil, it will turn it into false
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3 # can also use *line(splat operator which passes in each element in the array)
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_results(brd)
  if detect_winner(brd) == 'Player'
    prompt "Player won!"
  elsif detect_winner(brd) == 'Computer'
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_marks_a_square(brd)
  else
    computer_marks_a_square(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    current_player = 'computer'
  else
    current_player = 'player'
  end
end

def convert_abbreviated_selection(choice)
  case choice
  when 'p'
    'player'
  when 'cpu'
    'computer'
  end
end

player_score = 0
computer_score = 0
choice = ''

loop do
  system 'clear'
  board = initialize_board # Clear out values in the board hash.
  prompt 'Welcome to Tic Tac Toe!'

  loop do
    choice_prompt = <<-MSG
      Choose one: #{VALID_CHOICES.join(', ')}
      1) 'p'    for player
      2) 'cpu'  for computer
    MSG

    prompt(choice_prompt)
    choice = gets.chomp
    choice = convert_abbreviated_selection(choice)

    if choice == 'computer' || choice == 'player'
      break
    else
      prompt "That is not a valid choice"
    end
  end

  current_player = choice

  loop do
    board = initialize_board
    loop do
      if choice == 'computer'
        computer_marks_a_square(board)
        break if someone_won?(board) || board_full?(board)
        display_board(board) # Display the empty board.
        player_marks_a_square(board)
        break if someone_won?(board) || board_full?(board)
      elsif choice == 'player'
        display_board(board) # Display the empty board.
        place_piece!(board, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      else
        prompt "That is not a valid option!"
        break
      end
    end

    display_board(board) # Display final result of the game.

    if someone_won?(board)
      display_results(board)
      if detect_winner(board) == 'Player'
        player_score += 1
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
      end
    end

    prompt "Player: #{player_score} pts. Computer: #{computer_score} pts."
    if player_score == 5 || computer_score == 5
      display_results(board)
      break
    end
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe!"
