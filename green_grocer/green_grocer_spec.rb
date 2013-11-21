require "./green_grocer"

describe "#checkout" do
	it "calculates the total cost of a cart of items" do
		expect(checkout([{"BEETS"=>{:price=>2.50, :clearance=>false}},{"KALE"=>{:price=>3.00, :clearance=>false}},{"BLACK_BEANS"=>{:price=>2.50, :clearance=>false}},{"BEETS"=>{:price=>2.50, :clearance=>false}},{"KALE"=>{:price=>3.00, :clearance=>false}},{"KALE"=>{:price=>3.00, :clearance=>false}},{"ALMONDS"=>{:price=>9.00, :clearance=>false}},{"AVOCADO"=>{:price=>3.00, :clearance=>false}},{"CHEESE"=>{:price=>6.50, :clearance=>false}}],[{:item=>"CHEESE", :num=>3, :cost=>15.00}])).to eq(35.00)
	end
	it "calculates the total cost of a cart of items, including any discounts" do
		expect(checkout([{"BLACK_BEANS"=>{:price=>2.50, :clearance=>false}}, {"BEER"=>{:price=>13.00, :clearance=>false}}, {"PEANUTBUTTER"=>{:price=>3.00, :clearance=>false}}, {"CHEESE"=>{:price=>6.50, :clearance=>false}}, {"BEER"=>{:price=>13.00, :clearance=>false}}], [{:item=>"BEER", :num=>2, :cost=>20.00}])).to eq(18.00)
	end
end

describe "#consolidate" do
	it "re-orders the grocery list to include a count for the number of items" do
		expect(consolidate([{"BEETS"=>{:price=>2.50, :clearance=>false}},{"KALE"=>{:price=>3.00, :clearance=>false}},{"BLACK_BEANS"=>{:price=>2.50, :clearance=>false}},{"BEETS"=>{:price=>2.50, :clearance=>false}},{"KALE"=>{:price=>3.00, :clearance=>false}},{"KALE"=>{:price=>3.00, :clearance=>false}},{"ALMONDS"=>{:price=>9.00, :clearance=>false}},{"AVOCADO"=>{:price=>3.00, :clearance=>false}},{"CHEESE"=>{:price=>6.50, :clearance=>false}}])).to eq([{"BEETS"=>{:price=>2.50, :clearance=>false}, :count => 2},{"KALE"=>{:price=>3.00, :clearance=>false}, :count => 3},{"BLACK_BEANS"=>{:price=>2.50, :clearance=>false}, :count => 1},{"ALMONDS"=>{:price=>9.00, :clearance=>false}, :count => 1},{"AVOCADO"=>{:price=>3.00, :clearance=>false}, :count => 1},{"CHEESE"=>{:price=>6.50, :clearance=>false}, :count => 1}])
	end
end