#Phase 1 => O(n^2)

# def my_min(arr)
#   smallest = arr[0]
#   (0...arr.length).each do |i|
#     (0...arr.length).each do |j|
#       if arr[i] < arr[j] && arr[i] < smallest
#         smallest = arr[i] 
#       end
#     end
#   end 
#   smallest 
# end

def my_min(arr)
  smallest = arr[0]
  arr.each do |i|
    arr.each do |j|
      if i < j 
        smallest = i
      end
    end
  end 
  smallest 
end 

p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])


#Phase 2 => O(n)

def my_min2(arr)
  smallest = arr[0]
  arr.each { |ele| smallest = ele if ele < smallest}
  smallest 
end

# p my_min2([ 0, 3, 5, 4, -5, 10, 1, 90 ])

#

def largest_contiguous_subsum(arr)
  subs = []
  arr.each.with_index do |ele1,i1|
    arr.each.with_index do |ele2,i2|
      subs << arr[i1..i2] if i2 >= i1
    end 
  end  
  subs.map{|ele| ele.sum}.max
end

list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])


def largest_contiguous_subsum2(arr)
  large_sum = arr.first
  current_sum = arr.first
  i = 0
  j = 0
  while i < arr.length
    current_sum = arr[i..j].sum
    if current_sum > large_sum
      large_sum = current_sum
    end 
    if j == arr.length - 1
      i += 1
      j = 0
    end 
    j += 1
  end 
  large_sum
end 


# p largest_contiguous_subsum2(list) # => 8 (from [7, -6, 7])
