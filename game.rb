class Game

  attr_accessor :name :secret_number :guesses_left :next_guess

      def initialize(name, secret_number, tell_rules)
          @name = name
          @secret_number = secret_number
          @tell_rules = tell_rules
      end


        puts "Okay #{name}, so here are the rules:"
        puts " You must guess a number between one and ten"
        puts " You will only have three tries to get it right"
        puts
  

    secret_number = rand(1..10)
    guesses_left = 3


      def try_again(guesses_left, next_guess)
        puts "Sorry, that's not it..."
        puts "You have #{guesses_left} #{guesses_left > 1 ? 'guesses' : 'guess'} left." if guesses_left > 1
        puts "Guess #{next_guess}!" if guesses_left > 0
        puts
      end

      while guesses_left > 0
        puts "What's your guess?"
        guess = gets.strip.to_i

      if guess == secret_number
        puts "YOU WON!"
        exit
      elsif guess > secret_number
        guesses_left -= 1
        try_again(guesses_left, "lower")
      elsif guess < secret_number
        guesses_left -= 1 
        try_again(guesses_left, "higher")
      end
      end

  puts "Game over. You didn't correctly guess the number. It was #{secret_number}, duh."


end