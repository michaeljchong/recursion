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

def fibs_rec(num, fib = [])
  if num <= 2
    (0...num).each { |i| fib << i }
    return fib
  end

  fib = fibs_rec(num - 1)
  fib << fib[-2] + fib[-1]
end

p fibs(2)
p fibs_rec(3)
