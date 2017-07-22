require 'spec_helper'
require_relative '../lib/balanced_brackets'

describe 'Balanced Brackets' do
  [
      ['{}', 'YES'],
      ['{[()]}', 'YES'],
      ['{[(])}', 'NO'],
      ['{{[[(())]]}}', 'YES'],
      ['{{}(', 'NO']
  ].each do |input, expected|
    context "when input string is #{input}" do
      it "returns #{expected}" do
        expect(balanced_brackets(input)).to eq(expected)
      end
    end
  end

  input_content = []
  File.readlines(File.join(File.expand_path('..', __FILE__), 'files', 'balanced_brackets', 'input01.txt')).each do |line|
    input_content << line.chomp
  end
  expected_output = []
  File.readlines(File.join(File.expand_path('..', __FILE__), 'files', 'balanced_brackets', 'output01.txt')).each do |line|
    expected_output << line.chomp
  end

  input_content.each_with_index do |input, index|
    context "when input string is #{input} (line: #{index + 1})" do
      it "returns #{expected_output[index]}" do
        expect(balanced_brackets(input)).to eq(expected_output[index])
      end
    end
  end
end
