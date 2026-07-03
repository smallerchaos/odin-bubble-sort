require './spec/spec_helper'
require './lib/bubble_sort'
RSpec.describe 'Bubble Sort' do
  describe 'bubble sort' do
    it 'sorts smallest first, largest last' do
      array_to_sort = [4,3,78,2,0,2]
      expected_output = [0,2,2,3,4,78]
      expect(bubble_sort(array_to_sort)).to eq(expected_output)
    end
  end
end