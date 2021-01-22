def first_anagram?(string_1, string_2)
  arr = string_1.chars.permutation.to_a.map { |ele| ele.join("")}
  arr.include?(string_2)
end

# p first_anagram?("gizmo", "sally") 
# p first_anagram?("elvis", "lives")


def second_anagram2?(string_1, string_2)
  string_1.each_char do |char| 
    string_2.delete!(string_2.index(char))
  end

  string_2.chars.empty?
end

p second_anagram2?("gizmo", "sally") 
p first_anagram2?("elvis", "lives")