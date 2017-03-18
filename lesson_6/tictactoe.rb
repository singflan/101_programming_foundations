
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_TURN = 'Choose' # Choose, Player or Computer

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, delimiter = ', ', word = 'or')
  case array.size
  when 0 then ''
  when 1 then array[0]
  when 2 then array[0].to_s + " #{word} " + array[1].to_s
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}): "
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick middle square if available
  if !square && brd[5] == ' '
      square = 5
  end

  # randomly pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def increment_score(user)
  player_score += 1 if user == 'Player'
  computer_score += 1 if user == 'Computer'
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

 # def play(first_player)
 #   if first_player == 'Computer'
 #     computer_places_piece!(board)
 # end


player_score = 0
computer_score = 0
turn = ''

if FIRST_TURN == 'Choose'
  loop do
    prompt "Who would you like to go first? (p for player, c for computer) "
    answer = gets.chomp.downcase
    if answer == 'c'
      turn = 'Computer'
      puts "computer's turn!"
      break
    elsif answer == 'p'
      turn = 'Player'
      puts 'players turn...'
      break
    else
      prompt "Please enter a valid answer"
    end
  end
elsif FIRST_TURN == 'Player'
  turn = 'Player'
elsif FIRST_TURN == 'Computer'
  turn = 'Computer'
else
  puts "ERROR"
end

loop do
  board = initialize_board

  loop do
    if turn == 'Player'
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    elsif turn == 'Computer'
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    else
      prompt "Something went wrong, no one is designated to go first"
    end
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    player_score += 1 if detect_winner(board) == 'Player'
    computer_score += 1 if detect_winner(board) == 'Computer'
  else
    prompt "It's a tie!"
  end

  prompt "Scores---Player: #{player_score}  Computer: #{computer_score}"
  if player_score == 5
    prompt "Player won the game!"
    break
  elsif computer_score == 5
    prompt "Computer won the game!"
    break
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end


prompt "Thanks for playing Tic Tac Toe! Goodbye!"
