require "car"

RSpec.describe "Car" do

	describe "attributes" do
		it "allows reading and writing for :make" do
			pending("debugging a problem")
			car = Car.new
			car.make = 'Tes'
			expect(car.make).to eq('Test')
		end

		it "allows reading and writing for :year" do
			car = Car.new
			car.year = 9999
			expect(car.year).to eq(9999)
			#car.year.should eq(9999) 	# deprecated syntax
		end

		it "allows reading and writing for :color" do
			car = Car.new
			car.color = 'foo'
			expect(car.color).to eq('foo')
		end

		it "allows reading for :wheels" do
			car = Car.new()
			expect(car.wheels).to eq(4)
		end

		it "allows writing for doors"   # omitting the do/end block makes this a
																		# pending example

	end

	describe ".colors" do		# ruby convention class methods start with a .
		it "returns an array of color names" do
			c = ['blue', 'black', 'red', 'green']
			expect(Car.colors).to match_array(c)
		end
	end

	describe "#full_name" do	# ruby convention instance methods start with a #

		it "returns a string in the expected format" do
			@honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
			expect(@honda.full_name).to eq('2004 Honda (blue)')
		end

		# when initialized in this context
		context 'when initialized with no arguments' do
			it "returns a string using default values" do
				car = Car.new
				expect(car.full_name).to eq('2007 Volvo (unknown)')
			end
		end

	end

end
