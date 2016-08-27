require 'pry'

def mul(a, b)
  return 0 if [a, b].include?(0)
    
  sum = a
  while b > 1
    sum += a
    b -= 1
  end
	sum
end

p mul(4, 3)
p mul(4,0)
p mul(0,4)
p mul(4,1)
p mul(1,4)
p mul(100,200)
p mul(5,5)