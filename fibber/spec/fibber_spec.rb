require "./lib/fibber"

RSpec.describe Fibber do
  let!(:fibber) { Fibber.new }

  describe "initialize" do
    it "exists" do
      expect(fibber).to be_a(Fibber)
    end
  end

  describe "numbers" do
    it "returns all the sums with a given quantity of 3" do
      quantity = 3

      output = "0 1 1\n"

      expect(fibber.numbers(quantity)).to eq(output)
    end

    it "returns all the sums with a given quantity of 5" do
      quantity = 5

      output = "0 1 1 2 3\n"

      expect(fibber.numbers(quantity)).to eq(output)
    end

    it "returns all the sums with a given quantity of 5" do
      quantity = 7

      output = "0 1 1 2 3\n5 8\n"

      expect(fibber.numbers(quantity)).to eq(output)
    end

    it "returns all the sums with a given quantity of 15" do
      quantity = 15

      output = "0 1 1 2 3\n5 8 13 21 34\n55 89 144 233 377\n"

      expect(fibber.numbers(quantity)).to eq(output)
    end
  end
end
