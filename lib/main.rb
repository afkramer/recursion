def fibs(array_length)
  arr = []
  arr << 0 if array_length >= 1
  arr << 1 if array_length >= 2
  print arr
  (2...array_length).each do |index|
    arr << arr[index - 1] + arr[index - 2]
  end
  arr
end

# print fibs(8)

def fibs_rec(array_length)
  fib_array = []
  (1..array_length).each do |num|
    fib_array << fibonacci(num)
  end
  fib_array
end

def fibonacci(num)
  return [0, 1][num - 1] if num <= 2

  fibonacci(num - 1) + fibonacci(num - 2)
end

print fibs_rec(8)
