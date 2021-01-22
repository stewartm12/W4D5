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
  arr.each_with_index do |ele, i|
    c_ele = target_sum - ele  
    return true if arr[i + 1..-1].include?(c_ele)
  end

  false  
end

# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

def hash_two_sum?(arr, target_sum)
  hash = Hash.new(0)

  arr.each { |ele| hash[ele] += 1}
  hash.each { |k, v| return true if hash.include?(target_sum - k) }
  false 
end

p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false