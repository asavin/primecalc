puts 'Hello world. Now for some prime numbers calculation.'

#
# Implementing a classic Sieve algorithm
# as described here: http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
#

def calculatePrimesUpTo(max)
  myPrimes = [1, 2]
  
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
end

calculatePrimesUpTo(1000)
