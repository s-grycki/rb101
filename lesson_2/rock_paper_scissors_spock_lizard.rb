require 'yaml'
MESSAGES = YAML.load_file('rpssl_messages.yml')

# Hash of move keys with defeated values
MOVES = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'spock' => %w(scissors rock),
  'lizard' => %w(spock paper)
}

# Hash of move abbreviations
ABBR_MOVES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

# Formats console output
def prompt(message)
  puts ">> #{message}"
end

# Error method if user enters one s
def s_error
  prompt(MESSAGES['s_error'])
end

# Converts abbreviated inputs to full form
def abbr_converter(choice)
  ABBR_MOVES.values_at(choice).join
end

# Validates user input
def input_validator(choice)
  loop do
    prompt(MESSAGES['input'])
    choice = gets.chomp.downcase
    if choice == 's'
      s_error
    elsif MOVES.key?(choice)
      break
    elsif ABBR_MOVES.key?(choice)
      choice = abbr_converter(choice)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end
  choice
end

# Shorted win comparison using hash key/value pairs
def win?(first, second)
  MOVES[first].include?(second)
end

# Checks to see who won
def display_results(player, computer)
  if win?(player, computer)
    prompt(MESSAGES['u_win'])
  elsif win?(computer, player)
    prompt(MESSAGES['c_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

# Increments the win total
def increment_wins(player, computer, wins)
  if win?(player, computer)
    wins[:player_wins] += 1
  elsif win?(computer, player)
    wins[:computer_wins] += 1
  end
end

# Shows winner based on if player won 3 games
def show_winner(wins)
  winner = wins[:player_wins] == 3 ? "Player" : "Computer"
  prompt("#{winner} wins!")
end

# Asks user if they want to play again
def play_again?(yes, no)
  answer = nil
  loop do
    prompt(MESSAGES['play_again?'])
    answer = gets.chomp.downcase
    if yes.include?(answer)
      break
    elsif no.include?(answer)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end
  answer
end

# Welcomes user and asks if they need instructions
prompt("Welcome to #{MOVES.keys.join(', ')}")
prompt(MESSAGES['help?'])
help_answer = gets.chomp.downcase
prompt(MESSAGES['rules']) if help_answer == 'help'

# Main loop
loop do
  wins = {
    player_wins: 0,
    computer_wins: 0
  }

  until wins.value?(3)
    choice = input_validator(choice)
    computer_choice = MOVES.keys.sample
    prompt("You chose: #{choice}; and computer chose: #{computer_choice}")
    display_results(choice, computer_choice)
    increment_wins(choice, computer_choice, wins)
    prompt("Player: #{wins[:player_wins]}. Computer: #{wins[:computer_wins]}")
  end
  show_winner(wins)
  yes = %w(y yes)
  no = %w(n no)
  answer = play_again?(yes, no)
  break if no.include?(answer)
end

prompt(MESSAGES['bye'])