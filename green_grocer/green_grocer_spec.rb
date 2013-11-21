require "./green_grocer"

describe "checkout" do
	it "calculates the total cost of a cart of items" do
		expect(checkout([{"BEETS"=>{:price=>2.5, :clearance=>false}},{"KALE"=>{:price=>3.0, :clearance=>false}},{"BLACK_BEANS"=>{:price=>2.5, :clearance=>false}},{"BEETS"=>{:price=>2.5, :clearance=>false}},{"KALE"=>{:price=>3.0, :clearance=>false}},{"KALE"=>{:price=>3.0, :clearance=>false}},{"ALMONDS"=>{:price=>9.0, :clearance=>false}},{"AVOCADO"=>{:price=>3.0, :clearance=>true}},{"CHEESE"=>{:price=>6.5, :clearance=>false}}],[{:item=>"CHEESE", :num=>3, :cost=>15.0}])).to eq(35)
	end
	it "calculates the total cost of a cart of items, including any discounts" do
		expect(checkout([{"BEETS"=>{:price=>2.5, :clearance=>false}},{"KALE"=>{:price=>3.0, :clearance=>false}},{"BLACK_BEANS"=>{:price=>2.5, :clearance=>false}},{"BEETS"=>{:price=>2.5, :clearance=>false}},{"KALE"=>{:price=>3.0, :clearance=>false}},{"KALE"=>{:price=>3.0, :clearance=>false}},{"ALMONDS"=>{:price=>9.0, :clearance=>false}},{"AVOCADO"=>{:price=>3.0, :clearance=>true}},{"CHEESE"=>{:price=>6.5, :clearance=>false}}],[{:item=>"CHEESE", :num=>3, :cost=>15.0}])).to eq(35)
	end
end

#sum 35