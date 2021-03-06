VALID_CHOICES = %w(r p sc l sp)

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && second == 'sc') ||
  (first == 'r' && second == 'l') ||
  (first == 'p' && second == 'r') ||
  (first == 'p' && second == 'sp') ||
  (first == 'sc' && second == 'p') ||
  (first == 'sc' && second == 'l') ||
  (first == 'l' && second == 'sp') ||
  (first == 'l' && second == 'p') ||
  (first == 'sp' && second == 'sc') ||
  (first == 'sp' && second == 'r')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt("Choose one:
                      'r' for rock,
                      'sc' for scissors,
                      'p' for paper,
                      'sp' for spock,
                      'l' for lizard")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  puts "Your score: #{player_score}; computer's score: #{computer_score}"

  if player_score == 5
    puts "You reached 5 points first! You win it all!"
    break
  elsif computer_score == 5
    puts "Computer reached 5 points first. You lost the game. :( "
    break
  end

  prompt("Do you want to play again? (type 'y' for yes): ")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
