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

describe "#begins_wa" do
	it "should return the first element that begins with the letters 'wa'" do
		expect(begins_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")
	end
end

describe "#wa_all" do
	it "should return all the elements that begin with the letter 'wa'" do
		expect(wa_all(["candy", :pepper, "wall", :ball, "wacky"])).to eq(["wall", "wacky"])
	end
end

describe "#strings_only" do
	it "should return only the strings in an array" do
		expect(strings_only(["one", ["two"], :three])).to eq(["one"])
	end
end

describe "#third_letter" do
	it "should return a changed array with the third letter of all strings changed" do
		expect(third_letter(["item", :thing, "stuff"])).to eq(["it$m", :thing, "st$ff"])
	end
end