
#Classic Syntaxis
if condition
  # Do something!
end

#New mode
expression if boolean


#This is possible
puts "It's true!" if true

#But this not
if true puts "It's true!"

#how may you observe there is no need to the end keyword

#The same with unless
puts "Nigga" unless false

#Ternary operator syntaxis
boolean ? Do this if true: Do this if false

#Ternary examples
puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."

#Case normal syntaxis 
case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

#Cutted syntaxis

case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end

#With methods you can do an implicit return

#Strict form
def add(a,b)
  return a + b
end

#Implicit form
def add(a,b)
  a + b
end


#Short Circuit Evaluation 
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

#Up_to and down_to

95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100

95.downto(90) {|num| print num, " "}
# Prints 95 94 93 92 91 90

"L".upto("P") {|l| puts l}

#Call and response

[1, 2, 3].respond_to?(:push)

#Prints true cause it's possible to push data into arrays

[1, 2, 3].respond_to?(:to_sym)

#Prints false cause symbols are not arrays

#Another example

age = 26

age.respond_to?(:next)

#String interpolation

drink = "espresso"
"I love " + drink
# ==> I love espresso
"I love " << drink
# ==> I love espresso

age = 26
"I am " + age.to_s + " years old."
# ==> "I am 26 years old."
"I am " << age.to_s << " years old."
# ==> "I am 26 years old."

"I love #{drink}."
# ==> I love espresso.
"I am #{age} years old."
# ==> I am 26 years old.


favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!" 
end


#Iterating some shit my nigger

3.times do
  puts "I'm a refactoring master!"
end