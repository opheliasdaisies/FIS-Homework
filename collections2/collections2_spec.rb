require "./collections2"

describe "#starts_with_r" do
	it "should return true if every element of the tools array starts with an 'r' and false otherwise." do
		expect(starts_with_r(["ruby", "rspec", "rails"])).to eq(true)
	end
	it "should return true if every element of the tools array starts with an 'r' and false otherwise." do
		expect(starts_with_r(["python", "rspec", "rails"])).to eq(false)
	end
end

describe "#capt_planet_new" do
	it "should return all the elements that contain the letter 'a'" do
 		expect(capt_planet_new(["earth", "fire", "wind", "water", "heart"])).to eq(["earth", "water", "heart"])
	end
end