require './lib/snail'

RSpec.describe Snail do
  let!(:snail) { Snail.new }

  it 'will returns elements from an array matrix in clockwise order' do
    array_matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    # require 'pry'; binding.pry

    # array_matrix = [
    #   [],
    #   [4, 5],
    #   []
    # ]

    result = [1, 2, 3, 6, 9, 8, 7, 4, 5]

    expect(snail.snail(array_matrix)).to eq(result)

    array_matrix = [
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
    ]

    result = [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]

    expect(snail.snail(array_matrix)).to eq(result)

    array_matrix = [
      [1, 2, 3, 4, 5],
      [5, 6, 7, 8, 6],
      [9, 10, 11, 12, 7],
      [13, 14, 15, 16, 8],
      [13, 14, 15, 16, 9],
    ]

    result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 16, 15, 14, 13, 13, 9, 5, 6, 7, 8, 12, 16, 15, 14, 10, 11]

    expect(snail.snail(array_matrix)).to eq(result)
  end
end