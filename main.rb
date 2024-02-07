
def fib_rec(n)
  if n == 0
    0
  elsif n == 1
    1
  else 
    fib_rec(n-1) + fib_rec(n-2)
  end
end



def fib_array(length)
  array = []
  (0..length).each do |i|
    array << fib_rec(i)
  end
  array
end


puts fib_rec(6)

print fib_array(6)


