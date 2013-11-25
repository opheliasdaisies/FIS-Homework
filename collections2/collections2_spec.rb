require "./collections2"

describe "#starts_with_r" do
	it "should return true if every element of the tools array starts with an 'r' and false otherwise." do
		expect(starts_with_r(["ruby", "rspec", "rails"])).to eq(true)
	end
	it "should return true if every element of the tools array starts with an 'r' and false otherwise." do
		expect(starts_with_r(["python", "rspec", "rails"])).to eq(false)
	end
end