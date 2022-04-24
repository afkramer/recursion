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

def fibs_array(array_length)
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

# print fibs_array(8)

def merge_sort(array)
  return array if array.length < 2

  left = merge_sort(array.slice!(0, array.length / 2))
  right = merge_sort(array)

  sorted = []
  until left.length.zero? || right.length.zero? do
    sorted << (left[0] <= right[0] ? left.shift : right.shift)
  end
  sorted += left if left.length.positive?
  sorted += right if right.length.positive?

  sorted
end

array1 = [9, 5, 1, 8, 3, 7, 2, 4, 6]
print merge_sort(array1)
puts
array2 = [923, 999, 345, 123, 666, 721, 1]
print merge_sort(array2)
puts
