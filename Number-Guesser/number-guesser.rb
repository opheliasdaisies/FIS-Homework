def number_guesser
	puts "Guess a number between 0 and 100."
	random = rand(1..100)
	last_diff = 0
	loop do 
		guess = gets.chomp.to_i
		diff = random - guess
		if guess == random
			puts "Congratulations! #{guess} was the right number! Do you want to play again? Yes or no?"
			play_again = gets.chomp.downcase
			if play_again == "yes"
				number_guesser
			elsif play_again == "no"
				puts "Sorry to hear that! Come back soon! I get lonely easily."
			else
				puts "I don't understand that. I don't want to play with you anymore."
			end
			break
		elsif guess > random
			puts "Sorry, that number is too high."
		else
			puts "Sorry, that number is too low."
		end
		if last_diff != 0
			puts diff.abs < last_diff ? "You're getting warmer!" : "You're getting colder."
		end
		puts "Guess again!"
		last_diff = diff.abs
	end
end

number_guesser