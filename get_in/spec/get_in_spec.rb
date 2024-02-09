require "get_in"

RSpec.describe GetIn do
  let!(:instance) { GetIn.new }

  describe "#intialize" do
    it "exists" do
      expect(instance).to be_a(GetIn)
    end
  end

  describe "#get_in" do
    it "can get inside of a hash using directions" do
      data = { an_outer: "hash",
        with_another: {
          inner: "hash",
          and_another: {
            inside: "that"
          }
        }
      }

      directions = [:with_another, :and_another, :inside]

      result = "that"

      expect(instance.getin(data, directions)).to eq(result)
    end

    it "can get inside of a hash using nested directions" do
      data = { an_outer: "hash",
        with_another: {
          inner: "hash",
          and_another: {
            inside: "that"
          }
        }
      }

      directions = [:with_another, [:inner, [:and_another, :inside]]]

      result = ["hash", "that"]

      expect(instance.getin(data, directions)).to eq(result)
    end
  end
end
