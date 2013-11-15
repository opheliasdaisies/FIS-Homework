def number_guesser
	puts "Guess a number between 0 and 100."
	random = rand(1..100)
	loop do 
		guess = gets.chomp.to_i
		if guess == random
			puts "Congratulations! That was the right number!"
			break
		elsif guess > random
			puts "Sorry, that number is too high. I was guessing #{random}. Guess again!"
		else
			puts "Sorry, that number is too low. I was guessing #{random}. Guess again!"
		end
	end
end

number_guesser