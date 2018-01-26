# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	# YOUR CODE HERE
	s = 0
	arr.each { |item|
		s += item
	}
	return s
end

def max_2_sum arr
	# YOUR CODE HERE
	if arr.size == 0
		return 0
	elsif arr.size == 1
		return arr[0]
	else
		m1 = [ arr[0], arr[1] ].max
		m2 = [ arr[0], arr[1] ].min
		arr.drop(2).each { |item|
			if item >= m1
				m2 = m1
				m1 = item
			elsif item > m2
				m2 = item
			end
		}
		return m1 + m2
	end
end

def sum_to_n? arr, n
	# YOUR CODE HERE
	if arr.size <= 1
		return false
	else
		arr.each.with_index { |x, i|
			arr.each.with_index { |y, j|
				if i != j
					if x + y == n
						return true
					end
				end
			}
		}
		return false
	end
end

# Part 2

def hello(name)
	# YOUR CODE HERE
	return "Hello, " + name
end

def starts_with_consonant? s
	# YOUR CODE HERE
	if s.is_a? String
		if s.size == 0
			return false
		elsif /[AEIOU0-9\W]/ =~ s[0].upcase
			return false
		else
			return true
		end
	else
		return false
	end
end

def binary_multiple_of_4? s
	# YOUR CODE HERE
	if /^[01]+$/ =~ s
		if (s.to_i(2) % 4) == 0
			return true
		else
			return false
		end
	else
		return false
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize( isbn, price )
		if isbn == ''
			raise ArgumentError, "ISBN can't be empty string"
		end
		if price <= 0.0
			raise ArgumentError, "Price can't be <= $0.00"
		end
		@isbn = isbn
		@price = price
	end
	def isbn
		return @isbn
	end
	def price
		return @price
	end
	def isbn=( isbn )
		@isbn = isbn
	end
	def price=( price )
		@price = price
	end
	def price_as_string
		return "$%0.2f" % @price
	end
end
