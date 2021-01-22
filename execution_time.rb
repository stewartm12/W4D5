#Phase 1 => O(n^2)

def my_min(arr)
  smallest = arr[0]
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      if arr[i] < arr[j] && arr[i] < smallest
        smallest = arr[i] 
      end
    end
  end 

  smallest 
end

# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])


#Phase 2 => O(n)

def my_min2(arr)
  smallest = arr[0]
  arr.each { |ele| smallest = ele if ele < smallest}
  smallest 
end

p my_min2([ 0, 3, 5, 4, -5, 10, 1, 90 ])

#

def largest_contiguous_subsum(arr)
  
end