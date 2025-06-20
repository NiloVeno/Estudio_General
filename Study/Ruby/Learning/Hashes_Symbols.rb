#Nil value,
=begin

It represents the no exist of a value.

On another languages this symbol does'nt exist and the terminal will return to us a data type error 

=end

#Seting a default value to the hash constructor, otherwise it will return nil (nothing)
my_hash = Hash.new("Trady Blix")


#More symbols

menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}


#What's a Symbol??

#Symbols are unique data types similar to strings but not equal, also they have always the same id 

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

#these puts will output different id's for "string" and the same on for :symbol

"string" == :string # false

#Symbol sintaxis

:my symbol # Don't do this!
:my_symbol # Do this instead.


#What are Symbols Used For?

=begin

Principally for working with hashes

Symbols make good hash keys for a few reasons:

They’re immutable, meaning they can’t be changed once they’re created;

Only one copy of any symbol exists at a given time, so they save memory;

Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

=end

sounds = {
  :cat => "meow",
  :dog => "woof",
  :computer => 10010110,
}

symbol_hash = {
  :one => 1,
  :two => 2,    # Fill in these two blanks!
  :three => 3,
}

#Converting between symbols and strings

:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

"hello".intern
# ==> :hello another way to transform data in symbols


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.to_sym)
end 
print symbols

#Rocket style hash syntaxis

numbers = {
  :one => 1,
  :two => "two",
  :three => 3,
}

#The current syntaxis used for hashes are

new_hash = { 
  one: 1,
  two: 2,
  three: 3
}

#Code that I don't understand yet

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds." 


#filtering hashes and symbols

grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }

grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }


#Iterating and filtering using just one parameter

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3


movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!
movie_ratings.each_key {|k| puts k}


#Example of a little program

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end