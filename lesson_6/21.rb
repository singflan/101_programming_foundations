LIMIT_TO_WIN = 21
DECK = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

deck = []
player_hand = []
dealer_hand = []

def prompt(msg)
  puts "=> #{msg}"
end

def initalize_deck
  unshuffled_deck = DECK * 4
  shuffled_deck = unshuffled_deck.shuffle
  shuffled_deck
end

def deal_card(deck)
  card = deck.shift
end

def calculate_hand_points(hand)
  points = 0
  hand.each do |card|
    case card
    when '10', 'J', 'Q', 'K'
      then points += 10
    when '2', '3', '4', '5', '6', '7', '8', '9'
      then points += card.to_i
    when 'A'
      then points += 11
    end
  end

  ace_card_count = 0
  hand.select do |card|
    if card == 'A'
      ace_card_count += 1
    end
    ace_card_count.times do |card|
      points -= 10 if points > 21
    end
  end

  points
end

def busted?(hand)
  return calculate_hand_points(hand) > LIMIT_TO_WIN
end

def determine_winner(hand1, hand2)
  hand1_points = calculate_hand_points(hand1)
  hand2_points = calculate_hand_points(hand2)
  if hand1_points > hand2_points
    return 'Player'
  elsif hand2_points > hand1_points
    return 'Dealer'
  else
    return 'Draw'
  end
end

def display_results(winning_player, player, dealer)
  prompt "#{winning_player} wins!"
  prompt "Player's points: #{calculate_hand_points(player)}; Dealer's points: #{calculate_hand_points(dealer)}"
end

loop do
  deck = initalize_deck
  player_hand = []
  dealer_hand = []
  2.times do
    player_hand << deal_card(deck)
    dealer_hand << deal_card(deck)
  end
  prompt "You have #{player_hand}"
  prompt "Your point total is #{calculate_hand_points(player_hand)}"
  prompt "The dealer has a #{dealer_hand[0]}"

  choice = ''
  answer = nil
  # player turn loop
  loop do
    prompt "Do you want to hit or stay? (h for hit, s for stay)"
    answer = gets.chomp.downcase
    if answer == 'h'
      player_hand << deal_card(deck)
      prompt("You drew a #{player_hand.last}. Your point total is now #{calculate_hand_points(player_hand)}")
    elsif answer != 's'
      prompt "Invalid choice."
    end
    break if answer == 's' || busted?(player_hand)
  end

  if busted?(player_hand)
    # end game or play again?
    loop do
      prompt "You busted, the game is over. Do you want to play again? (y or n) "
      answer = gets.chomp.downcase
      break if answer == 'y' || answer == 'n'
      prompt "Invalid answer, please enter 'y' or 'n'. "
    end
    next if answer == 'y'
    break if answer == 'n'
  else
    puts "You chose to stay!"
  end

  # dealer turn loop
  loop do
    break if busted?(dealer_hand) || calculate_hand_points(dealer_hand) >= 17
    dealer_hand << deal_card(deck)
  end

  if busted?(dealer_hand)
    loop do
      prompt "Dealer busted, you win! Do you want to play again? (y or n) "
      answer = gets.chomp.downcase
      break if answer == 'y' || answer == 'n'
      prompt "Invalid answer, please enter 'y' or 'n'. "
    end
    next if answer == 'y'
    break if answer == 'n'
  end
  # compare cards to determine winnner
  winner = determine_winner(player_hand, dealer_hand)
  display_results(winner, player_hand, dealer_hand)
end

prompt "Thank you for playing 21!"
