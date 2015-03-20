def addprimes(top)
  primes = []
  (3...top).each do |num|
    prime = true
    (2...num).each do |div|
      prime = false if num % div == 0
    end
    primes << num if prime == true
  end
  print primes.inject(:+)
end
addprimes(10000)