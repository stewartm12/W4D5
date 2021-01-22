def first_anagram?(string_1, string_2)
  arr = string_1.chars.permutation.to_a.map { |ele| ele.join("")}
  arr.include?(string_2)
end

# p first_anagram?("gizmo", "sally") 
# p first_anagram?("elvis", "lives")


def second_anagram?(string_1, string_2)
  string_1.each_char do |char| 
    if !string_2.include?(char)
      return false 
    else
      idx = string_2.index(char)
      string_2.delete!(string_2[idx])
    end 
  end
  string_2.chars.empty?
end

# p second_anagram?("gizmo", "sally") 
# p second_anagram?("elvis", "lives")

def third_anagram?(string_1, string_2)
  first = string_1.chars.sort.join("")
  second = string_2.chars.sort.join("")
  first == second
end 

# p third_anagram?("gizmo", "sally") 
# p third_anagram?("elvis", "lives")


def fourth_anagram?(string_1,string_2)
  hash = Hash.new(0)
  string_1.each_char {|char| hash[char] += 1 }
  string_2.each_char {|char| hash[char] -= 1 }
  hash.all?{|k,v| v == 0}
end 

p fourth_anagram?("gizmo", "sally") 
p fourth_anagram?("elvis", "lives")