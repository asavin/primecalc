require './primecalc'

# The actual app functionality
primeCalc = PrimeCalc.new

primesArray = primeCalc.calculatePrimesUpTo(100)
primeCalc.printMultiplicationTable(primesArray[0...10])
