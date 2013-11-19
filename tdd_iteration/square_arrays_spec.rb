require "./square_arrays_solution"

describe "#square_array" do
	it "should return [25, 4, 49, 36] if passed [5, 2, 7, 6]" do
		expect(square_array([5, 2, 7, 6])).to eq([25, 4, 49, 36])
	end
	it "should return [1, 4, 9, 16, 25, 36, 42] if passed [1, 2, 3, 4, 5, 6, 7]" do
		expect(square_array([1, 2, 3, 4, 5, 6, 7])).to eq([1, 4, 9, 16, 25, 36, 42])
	end
end