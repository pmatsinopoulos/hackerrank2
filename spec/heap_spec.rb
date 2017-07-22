require 'spec_helper'
require_relative '../lib/heap'

describe Heap do
  let(:element) { 10 }

  describe '#push' do
    context 'when heap is empty' do
      subject(:heap) { Heap.new }
      it 'adds the element as expected' do
        heap.push element

        expect(heap.elements).to eq([element])
      end
    end
  end
end
