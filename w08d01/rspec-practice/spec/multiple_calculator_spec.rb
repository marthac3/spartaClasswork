require "multiple_calculator"

describe MultipleCalculator do 

	describe ".multiples" do
		context "given 10" do
			it "returns 3, 5, 6, 9" do
				expect(MultipleCalculator.multiples("10")).to eql([3,5,6,9])
			end
		end
	end

	describe ".add" do
		context "given 10" do
			it "returns 23" do
				expect(MultipleCalculator.add("10")).to eql(23)
			end
		end

		context "given lizard" do
			it "returns 'Invalid Input'" do
				expect(MultipleCalculator.add("lizard")).to raise "Invalid Input"
			end
		end

		context "given 0" do
			it "returns 'Invalid Input'" do
				expect(MultipleCalculator.add("0")).to raise "Invalid Input"
			end
		end

		context "given 2" do
			it "returns 'Invalid Input" do
				expect(MultipleCalculator.add("2")).to raise "Invalid Input"
			end
		end

		context "given -10" do
			it "returns 'Invalid Input'" do
				expect(MultipleCalculator.add("-10")).to raise "Invalid Input"
			end
		end

		context "given 4" do
			it "returns 3" do
				expect(MultipleCalculator.add("4")).to eql(3)
			end
		end

		context "given empty string" do
			it "returns 'Invalid Input'" do
				expect(MultipleCalculator.add("")).to raise "Invalid Input"
	end

end