def fibs(num, sequence = [])
  num.times do |i|
    if sequence.length < 2
      sequence << 1
    else
      sequence << sequence[-2] + sequence[-1]
    end
  end
  sequence
end

p fibs(3)
