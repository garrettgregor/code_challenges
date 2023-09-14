require "./lib/pal_sum"

RSpec.describe PalSum do
  let!(:pal) { PalSum.new }
  context "instance methods" do
    describe "#first_twenty_five" do
      it "finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000." do
        expect(pal.first_twenty_five).to_not include(47, 74)
      end
    end
  end
end