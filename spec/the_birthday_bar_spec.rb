require 'spec_helper'
require_relative '../lib/the_birthday_bar'

describe 'The birthday bar' do
  [
      [[1, 2, 1, 3, 2], 3, 2, 2],
      [[1, 1, 1, 1, 1, 1], 3, 2, 0],
      [[4], 4, 1, 1],
  ].each do |bars, d, m, different_ways|
    it "for bars #{bars} and day of month #{d} and month of year #{m} the different was are #{different_ways}" do
      expect(the_birthday_bar(bars, d, m)).to eq(different_ways)
    end
  end
end
