require 'spec_helper'
require_relative '../lib/migratory_birds'

describe 'Migratory Birds' do
  [
      [[1, 2, 3, 2, 3, 4, 5, 4, 4, 4, 5, 2, 3, 2], 2],
      [[1, 2, 3, 2, 3, 4, 5, 4, 4, 4, 5, 2, 3], 4],
      [[1], 1],
  ].each do |birds, expected|
    it "for #{birds} it returns #{expected}" do
      expect(migratory_birds(birds)).to eq(expected)
    end
  end
end
