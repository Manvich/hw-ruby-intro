# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	for x in arr do
		sum += x
	end
	return sum
end

def max_2_sum arr
	if arr.length == 0
		return 0
	elsif arr.length == 1
		return arr[0]
	end

	max1 = arr[0] > arr[1] ? arr[0] : arr[1]
	max2 = arr[0] > arr[1] ? arr[1] : arr[0]
	for x in 2..arr.length-1 do
		if arr[x] > max1
			max2 = max1
			max1 = arr[x]
		elsif arr[x] > max2
			max2 = arr[x]
		end
	end
	return max1 + max2
end

def sum_to_n? arr, n
	if arr.length < 2
		return false
	end
	for x in 0..arr.length - 2 do
		for y in (x + 1..arr.length - 1) do
			if arr[x] + arr[y] == n
				return true
			end
		end
	end
	return false
end

# Part 2

def hello(name)
	return "Hello, " + name
end

def starts_with_consonant? s
	return /\A[b-df-hj-np-tv-z]/.match(s.downcase)
end

def binary_multiple_of_4? s
	return /\A[01]*00\Z|\A0\Z/.match(s)
end

# Part 3

class BookInStock
	attr_accessor :isbn
	attr_accessor :price

	def initialize (isbn, price)
		@isbn = isbn
		@price = price
		if @isbn == "" || @price <= 0
			raise ArgumentError.new("Error")
		end
	end

	def price_as_string
		result = "$" + @price.to_s 
		arr = result.split(".")
		return arr[0] + "." + (arr[1].to_s + "00")[0..1]
	end
end
