VALID_CHOICES = { "rock": 'r', "paper": 'p', "scissors": 's', "spock": 'sp', "lizard": 'l'}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard')
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock' && second == 'scissors') 
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

loop do
  # player's turn
  choice = ''
  loop do
    
    prompt("Choose one: ")
    VALID_CHOICES.each do |word, shorthand|
      puts "   #{word} (#{shorthand})"
    end
    
    
    p choice = Kernel.gets().chomp()
    
    if VALID_CHOICES.has_key?(choice)
      break
    elsif VALID_CHOICES.values.include?(choice)
      choice = VALID_CHOICES.key(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  # computer's turn
  computer_choice = VALID_CHOICES.keys.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
