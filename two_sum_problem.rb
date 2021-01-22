require 'set'

#brute force
def bad_two_sum?(arr, target_sum)
  (0...arr.length).each do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end

  false 
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)
  arr = arr.sort!
  i = 0
  j = arr.length - 1
  while i != j
    if arr[i] + arr[j] == target_sum
      return true
    elsif arr[i] + arr[j] < target_sum
      i += 1
    elsif arr[i] + arr[j] > target_sum
      j -= 1
    end 
  end 
  false
end

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

def hash_two_sum?(arr, target_sum)
  hash = Hash.new(0)
  arr.each { |ele| hash[ele] += 1}
  hash.each do |k, v| 
    hash.delete(k)
    return true  if hash.include?(target_sum - k)
  end 
  false 
end

# p hash_two_sum?(arr, 6) # => should be true
# p hash_two_sum?(arr, 10) # => should be false