module Enumerable
  #Each method
  def my_each
    i = 0 
    while 
    i < self.size 
    yield(self[i])
    i += 1 
    end 
    return self
  end 
  #each_with_index method
  def my_each_with_index
    i = 0 
    while 
    i < self.size 
    yield(self[i],i)
    i += 1 
    end 
    return self
  end 
  #select method
  def my_select
    new_array = []
    self.my_each {|num| new_array.push(num) if yield(num)}
    return new_array
    
  end 
  #all? method
  def my_all?
    truth = true 
    self.my_each do |num|
      if yield(num) == false 
        truth = false 
      end 
    end 
    return truth
  end 
  #any? method
  def my_any?
    self.my_each do |num|
      if yield(num)
        return true 
      end 
    end 
        return false 
    end 
    #none? method
  def my_none?
    self.my_each do |num|
      if yield(num)
        return false 
      end 
    end 
    return true 
    end 
    #count method 
  def my_count
    count = 0 
    self.my_each do |num|
      if yield(num) == true 
        count += 1 
      end 
    end 
    return count 
  end 
   #map method
  def my_map
    new_array = []
    self.my_each do |num|
      item = yield(num)
      new_array.push(item)
    end 
    return new_array
  end 
  #inject method
	def my_inject(sum=nil)
		if sum == nil
			sum = self[0]
			x = 1
		else
			x = 0
		end
		self[x..self.size].my_each do |i|
			sum =  (yield sum, i)	
		end
		return sum
	end
#new map method that takes a proc and or a block
  	def new_map(&proc)
		new_array = []
			if proc && block_given?
				self.my_each  {|i| new_array << proc.call(yield(i))}
			elsif proc && !block_given?
				self.my_each {|i| new_array << proc.call(i)}
			end
		return new_array
	end



end 

=begin
def multiply_els(array)
		array.my_inject {|total, i| total * i}
end
puts multiply_els([2,5])
=end 

my_proc = Proc.new {|num| num * 2}

array = [1,2,3,4,5,8]
#array = %w{cat dog bear}


#array.my_each {|num| puts num}
#array.my_each_with_index{|num,index| puts index}
#array.my_select {|num| num % 2 == 0}
#array.my_all? {|num| num > 10}
#array.my_any? {|num| num > 10}
#array.my_none? {|word| word.length < 10} 
#array.my_count {|num| num % 2 == 0}
#array.my_map {|num| num * 2 }
#array.new_map(&my_proc)