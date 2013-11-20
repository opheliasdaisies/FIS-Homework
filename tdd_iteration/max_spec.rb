require "./max_solution"

describe "#maximum" do
	it "should return the largest element of the array" do
		expect(maximum([43, 32, 45, 23])).to eq(45)
	end
	it "should return the largest element of the array" do
		expect(maximum([4, 0, 1, 2, 3])).to eq(4)
	end
	it "should return an empty array if given an empty array" do
		expect(maximum([])).to eq([])
	end
	it "should return the largest element of the array if two elements are the same" do
		expect(maximum([1, 2, 2, 1])).to eq(2)
	end
end

# describe Array, "#maximum" do
# 	it "should return the largest element of the array" do
# 		expect(maximum([43, 32, 45, 23])).to eq(45)
# 	end
# 	it "should return the largest element of the array" do
# 		expect(maximum([4, 0, 1, 2, 3])).to eq(4)
# 	end
# 	it "should return an empty array if given an empty array" do
# 		expect(maximum([])).to eq([])
# 	end
# 	it "should return the largest element of the array if two elements are the same" do
# 		expect(maximum([1, 2, 2, 1])).to eq(2)
# 	end
# end