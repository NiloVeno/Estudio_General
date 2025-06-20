=begin

What is a method? A method is a reusable section of code written to perform a specific task in a program.
	
=end

#First Example

def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)

#More short examples
#Method without argument
def welcome
	puts "Welcome To ruby dude!!!"
end

welcome

#Method with argument
def square(n)
  puts n ** 2
end

square(5)

def friend(name):
  puts "My friend is " + name + "."
end

#Splat arguments

=begin 

Splat arguments are arguments preceded by an asterisk *. 
This tells the program that the method 
can receive one or more arguments. 

=end

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

def car_counter(car, *numbers)
    numbers.each {|number| puts "This is the #{car} number #{number.to_s}"}
end

#return, when sometimes we only want to recive the result, we just need to write "return" 

def double(n)
  return n * 2
end

output = double(6)
output += 2
puts output

#Another Example

def add(x, y)
  return x + y
end


def by_five?(n)
  return n % 5 == 0
end

def greeter(name)
  return name
end

def by_three?(number)
  if number % 3 == 0
    return true
  else
    return false
  end
end


#Blocks they work like annonymous functions in Javascript

1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }

#Some better examples

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts 5 }
