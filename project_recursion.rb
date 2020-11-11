def fibs(numof)
  return numof if numof < 2
  fib1,fib2 = 0,1
  fibarr = [0]
  until numof == 1 do
    $fib3 = fib2
    fib2 = fib1 + fib2
    fib1 = $fib3
    fibarr << fib1
    numof -= 1
  end
  fibarr
end

p fibs(0) # => 0
p fibs(1) # => 1
p fibs(5) # => [0, 1, 1, 2, 3]
p fibs(10) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fibs_rec(fibrec)
  return fibrec if fibrec < 2
  fibs_rec(fibrec - 1) + fibs_rec(fibrec - 2)
end

p fibs_rec(5)