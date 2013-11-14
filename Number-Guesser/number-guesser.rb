def number_guesser
	puts "Guess a number between 0 and 100."
	guess = gets.chomp
	random = rand(1..100)
	if guess == random
		puts "Congratulations! That was the right number!"
	elsif guess > random
		puts "Sorry, that number is too high. I was guessing #{random}."
	else
		puts "Sorry, that number is too low. I was guessing #{random}."
	end
end

number_guesser