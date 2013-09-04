puts 'Hello world. Now for some prime numbers calculation.'

#
# Implementing a classic Sieve algorithm
# as described here: http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
#

def calculatePrimesUpTo(max)
  if validatePrimeInput(max)
    # Initializing array with the first prime number
    myPrimes = [2]

    # Initialize array with potential candidates
    # Only take odd numbers starting from 3
    allCandidates = (3..max).step(2).to_a

    while !allCandidates.empty? do
      myPrimes << allCandidates.first
      puts "Added new prime: " + myPrimes.last.to_s
      allCandidates.delete(myPrimes.last)

      # Removing all candidates divisible by last calculated prime
      allCandidates.each do |i|
        if i % myPrimes.last == 0
          allCandidates.delete(i)
        end
      end
    end

    puts "Final result: " + myPrimes.to_s
  else
    puts "Wrong max input"
  end
end

# Only accepting fixnums greater than 2
def validatePrimeInput(input)
  if (input.is_a? Fixnum) and input > 2
    true
  else
    false
  end
end

#
# This method takes an array, multiply every value
# and prints results into a neat table
#
def printMultiplicationTable(numArray)
  
end

calculatePrimesUpTo(100)
