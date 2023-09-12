require './lib/million'

RSpec.describe Million do
  let!(:checker) { Million.new }

  it 'checks for matches amongst given arrays' do
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]

    result = [2, 5]

    expect(checker.find_matches(nums_1, nums_2, nums_3)).to eq(result)
  end
end