LIMIT_TO_WIN = 21
DEALER_LIMIT = 17
TOTAL_WINS_LIMIT = 5
SUITS = ['H', 'D', 'S', 'C']
DECK = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

deck = []
player_hand = []
dealer_hand = []

def prompt(msg)
  puts "=> #{msg}"
end

def initalize_deck
  SUITS.product(DECK).shuffle
end

def deal_card(deck)
  deck.shift
end

def calculate_hand_points(hand)
  card_values = hand.map { |card| card[1] }

  points = 0
  card_values.each do |card_value|
    case card_value
    when '10', 'J', 'Q', 'K'
      then points += 10
    when '2', '3', '4', '5', '6', '7', '8', '9'
      then points += card_value.to_i
    when 'A'
      then points += 11
    end
  end

  card_values.select { |card_value| card_value == 'A' }.count.times do
    points -= 10 if points > 21
  end

  points
end

def busted?(hand)
  calculate_hand_points(hand) > LIMIT_TO_WIN
end

def determine_winner(hand1, hand2)
  hand1_points = calculate_hand_points(hand1)
  hand2_points = calculate_hand_points(hand2)

  if hand1_points > LIMIT_TO_WIN
    'Player bust'
  elsif hand2_points > LIMIT_TO_WIN
    'Dealer bust'
  elsif hand1_points > hand2_points
    return 'Player'
  elsif hand2_points > hand1_points
    return 'Dealer'
  else
    return 'Draw'
  end
end

def display_results(player, dealer)
  result = determine_winner(player, dealer)

  case result
  when 'Player bust'
    prompt "You busted! Dealer wins!"
  when 'Dealer bust'
    prompt "Dealer busted! You win!"
  when 'Player'
    prompt "You win!"
  when 'Dealer'
    prompt "Dealer wins!"
  when "Draw"
    prompt "It's a tie!"
  end

  result
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def round_over_output
  prompt "End of round"
end

def display_overall_results(p_wins, d_wins)
  prompt "Player Overall Wins: #{p_wins}; Dealer Overall Wins: #{d_wins}"
end

player_wins = 0
dealer_wins = 0

loop do
  prompt "Welcome to Twenty-One!"

  deck = initalize_deck
  player_hand = []
  dealer_hand = []
  # deal first cards
  2.times do
    player_hand << deal_card(deck)
    dealer_hand << deal_card(deck)
  end

  dealer_points = calculate_hand_points(dealer_hand)
  player_points = calculate_hand_points(player_hand)
  prompt "You have: #{player_hand[0]} and #{player_hand[1]} for a total of #{player_points}."
  prompt "The dealer has a #{dealer_hand[0]} and ?"

  # player turn loop
  loop do
    answer = nil
    loop do
      prompt "Do you want to hit or stay? (h for hit, s for stay)"
      answer = gets.chomp.downcase
      break if ['h', 's'].include?(answer)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if answer == 'h'
      player_hand << deal_card(deck)
      player_points = calculate_hand_points(player_hand)
      prompt "You chose to hit!"
      prompt "You drew a #{player_hand.last}. Your cars are now #{player_hand}"
      prompt "Your point total is now #{player_points}"
    end

    break if answer == 's' || busted?(player_hand)
  end

  if busted?(player_hand)
    # end game or play again?
    result = display_results(player_hand, dealer_hand)
    dealer_wins += 1
    round_over_output
    display_overall_results(player_wins, dealer_wins)
    break if dealer_wins == TOTAL_WINS_LIMIT
    play_again? ? next : break
  else
    prompt "You stayed at #{player_points}"
  end

  # dealer turn loop
  prompt "Dealer turn..."

  loop do
    break if dealer_points >= DEALER_LIMIT

    prompt "Dealer hits!"
    dealer_hand << deal_card(deck)
    dealer_points = calculate_hand_points(dealer_hand)
    prompt "Dealer's cards are now: #{dealer_hand}"
  end

  if busted?(dealer_hand)
    prompt "Dealer total is now: #{dealer_points}"
    result = display_results(player_hand, dealer_hand)
    player_wins += 1
    round_over_output
    display_overall_results(player_wins, dealer_wins)
    break if player_wins == TOTAL_WINS_LIMIT
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_points}"
  end

  # compare cards to determine winnner
  puts "=============="
  prompt "Dealer has #{dealer_hand}"
  prompt "Dealer total is #{dealer_points}"
  prompt "Player has #{player_hand}"
  prompt "Player total is #{player_points}"
  puts "=============="

  result = display_results(player_hand, dealer_hand)
  player_wins += 1 if result == 'Player'
  dealer_wins += 1 if result == 'Dealer'
  round_over_output
  display_overall_results(player_wins, dealer_wins)
  break if player_wins == TOTAL_WINS_LIMIT || dealer_wins == TOTAL_WINS_LIMIT
  break unless play_again?
end

prompt "Thank you for playing 21! Good-bye!"
