require_relative "./number-guesser.rb"

describe "#number_guesser" do

	before do
		random = 101
	end

	it "should tell the user they guessed too high if the number guessed is more than the random number" do
		number_guesser.should eq("Sorry, that number is too low. I was guessing #{random}.")
	end

	before do
		random = -1
	end

	it "should tell the user they guessed too low if the random number is less than the random number" do
		number_guesser.should eq("Sorry, that number is too high. I was guessing #{random}.")
	end


	before do
		random = guess
	end

	it "should tell the user they guessed correctly if the number guessed equals the random number" do
		number_guesser.should eq("Congratulations! That was the right number!")
	end

end
