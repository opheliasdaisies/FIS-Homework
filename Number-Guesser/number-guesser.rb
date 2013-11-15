def number_guesser
	puts "Guess a number between 0 and 100."
	random = rand(1..100)
	loop do 
		guess = gets.chomp.to_i
		if guess == random
			puts "Congratulations! That was the right number! Do you want to play again? Yes or no?"
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
			puts "Sorry, that number is too high. I was guessing #{random}."
		else
			puts "Sorry, that number is too low. I was guessing #{random}."
		end
		puts "Guess again!"
	end
end

number_guesser