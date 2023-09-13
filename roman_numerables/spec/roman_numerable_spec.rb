require './lib/roman_numerable'

RSpec.describe Roman do
  let!(:roman) { Roman.new }

  it 'returns roman numerables from an integer' do
    expect(roman.to_roman(128)).to eq("CXXVIII")
    expect(roman.to_roman(2000)).to eq("MM")
  end
end