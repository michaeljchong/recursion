# Iterative Fibonacci
def fibs(num, sequence = [])
  (0..num - 1).each do |i|
    if sequence.length < 2
      sequence << i
    else
      sequence << sequence[-2] + sequence[-1]
    end
  end
  sequence
end

# Recursive Fibonacci
def fibs_rec(num, fib = [])
  if num <= 2
    (0...num).each { |i| fib << i }
    return fib
  end

  fib = fibs_rec(num - 1)
  fib << fib[-2] + fib[-1]
end

# Recursive Merge Sort
def merge_sort(arr)
  return arr if arr.length < 2

  halfway = arr.length / 2
  first_half = merge_sort(arr[0...halfway])
  second_half = merge_sort(arr[halfway..-1])
  merge(first_half, second_half)
end

def merge(first_half, second_half, sorted = [])
  until first_half.empty? || second_half.empty?
    if first_half[0] < second_half[0]
      sorted << first_half.shift
    else
      sorted << second_half.shift
    end
  end
  sorted + first_half + second_half
end

p fibs(2)
p fibs_rec(3)
p merge_sort([1,3,2,8, 4, 23, 54, 7, 2])
