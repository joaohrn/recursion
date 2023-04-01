def fibs(n)
  fib = [0, 1]
  (n-2).times do
    fib << fib[-1] + fib[-2]
  end
  fib
end

def fibs_rec(n)
  n < 2 ? n: fibs_rec(n-1) + fibs_rec(n-2)
end

puts fibs_rec(8)
