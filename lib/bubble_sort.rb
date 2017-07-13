def bubble_sort(array)
   loop do 
  i = 0
   swap = false 
  
  while i < array.length-1
    if array[i] > array[i+1]
      array[i],array[i+1] = array[i+1],array[i]
      swap = true 
    end 
   
    i += 1 
  end 
   
  break if swap == false
  
 end  
 return array 
end 

#puts bubble_sort([9,7,2,1,3])

def bubble_sort_by(array)
	loop do 
		i = 0 
		swap = false 
		while i < array.length - 1 
			if yield(array[i], array[i+1]) < 0
			array[i],array[i+1] = array[i+1],array[i]
			swap = true  
		end 
		i += 1 
		end 
		break if swap == false 
	end 
	puts array 
end 


bubble_sort_by(["hello","hell","vlad","saraev"]) do |r,l|
	r.length - l.length 
end 