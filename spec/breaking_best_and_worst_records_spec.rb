require 'spec_helper'
require_relative '../lib/breaking_best_and_worst_records'

describe 'Breaking Best and Worst Records' do
  [
      [[10, 5, 20, 20, 4, 5, 2, 25, 1], [2, 4]],
      [[3, 4, 21, 36, 10, 28, 35, 5, 24, 42], [4, 0]]
  ].each do |scores, expected|
    it "for scores as: #{scores} the expected answer is #{expected}" do
      expect(breaking_best_and_worst_records(scores)).to eq(expected)
    end
  end
end
