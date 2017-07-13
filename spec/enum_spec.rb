require 'enum_methods'

describe Enumerable do
  
  describe '#my_each' do
    let(:my_each) { test_object.my_each { |item| item }}
    let(:test_object) { [1,2,3,4] }

    context 'when array has items' do
      it 'returns elements in the array' do
        expect(my_each).to eql([1,2,3,4])
      end
    end
end

	describe '#my_each_with_index' do 
	let(:my_each_with_index) {ary.my_each_with_index do |item,index|
		index 
	end }
	let(:ary) {[1,2,3,4]}

	context 'displays item and index' do 
	it 'returns the item and index' do 
		expect(my_each_with_index).to eql([1,2,3,4])
			end 
		end 
	end  
end 



