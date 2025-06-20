#Lambdas, blocks and shits

#Refreshing memory

[1, 2, 3].each do |num|
  puts num
end
# ==> Prints 1, 2, 3 on separate lines

[1, 2, 3].each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines

5.times do
  puts "I'm a block!"
end

#Collect method

#Takes any value in the block and applies the expression

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]

#Anyways the original values did not changed

my_nums
# ==> [1, 2, 3]

#this happens cause the method takes a copy of the value and execute the script on it 

#However if we really want to change the original value there is only necesary to use "collect!"

my_nums.collect! { |num| num ** 2 }
# ==> [1, 4, 9]
my_nums
# ==> [1, 4, 9]

#Yield shit

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }


#Another example

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Now call the method with your name!

yield_name("Santiago") {|n| puts "My name is #{n}."}

#procs, hence blocks are the few elements that they are not a object. We need to use procs to work with them efficently  

#proc example
cube = Proc.new { |x| x ** 3 }

#another example

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]

[4, 5, 6].map!(&cube)
# ==> [64, 125, 216] & converts cube in a block yet .map! takes a method to work


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new {|num| num.floor}

# Write your code above this line!
ints = floats.collect(&round_down)
print ints

#More shit 
test = Proc.new { # does something }
test.call
# does that something!


#Converting data types 

strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]


#Another example

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)

puts strings_array


#Ruby lambda
#Lambdas are objects and quite similar to procs by not say identical

lambda { puts "Hello!" }

Proc.new { puts "Hello!" }
#They do the same 

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


#Lambda syntax my nigga

lambda { |param| block }

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda {|x| x.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

