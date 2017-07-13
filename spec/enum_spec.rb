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
	let(:ary) {[1,2,3,4]} 
	let(:my_each_with_index) {ary.my_each_with_index do |item,index|
		index 
	end }
	

	context 'displays item and index' do 
	it 'returns the item and index' do 
		expect(my_each_with_index).to eql([1,2,3,4])
			end 
		end 
	end 

	describe '#my_select' do 
	let(:ary) {[1,2,3,4]}
	let(:my_select) {ary.my_select {|item| item % 2 == 0}}

	context 'returns a new array' do
		it 'returns a new array based on the conditio given' do
			expect(my_select).to eql([2,4]) 
			end 
		end 
	end

	describe '#my_all?' do 
	let(:ary) {[1,2,3,4]}
	let(:my_all?) {ary.my_all? {|item| item > 8}} 
		context 'checks condition for true or false' do 
			it 'returns true or false if condition met' do 
				expect(my_all?).to eql(false)
			end 
		end 
	end 

	describe '#my_any?' do 
		let(:ary) {[1,2,3,4]}
		let(:my_any?) {ary.my_any? {|item| item > 1}}
			context 'checks array for values' do
			it 'returns true or false if condition met' do
				expect(my_any?).to eql(true)
			end 
		end 
	end

	describe '#my_map' do 
		let(:ary) {[1,2,3,4]}
		let(:my_map) {ary.my_map {|item| item * 2}}
			context 'based on the block' do 
			it 'returns a new array' do 
				expect(my_map).to eql([2,4,6,8])
			end 
		end 
	end 	  
end 



