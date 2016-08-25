# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.



# 1.
# (0..999).inject{ |sum, n| n%3==0||n%5==0 ? sum : sum+n }
# or:
# 2 below

def multiples_of_3_and_5(range:)
	range.select { |number| number % 3 == 0 || number % 5 == 0 }.reduce(:+)
end

puts multiples_of_3_and_5(range:(1...10))
puts multiples_of_3_and_5(range:(1...1000))
