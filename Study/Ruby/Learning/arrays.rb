my_array = ["Momo", "Ichika", "Akeno", "Lala", "King"]


#Access by index

demo_array = [100, 200, 300, 400, 500]

print  demo_array[2]

#Multidimensional Arrays

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

my_2d_array = [["Lala", "Momo", "Nana", "Yami"], ["Nami", "Robin", "Boa"], ["Rukia", "Yoruichi"]]


#Hashes

=begin
Looks like Javascript objects
They are key/value pairs 
They are another form to make an array, well not quite the same type of data, but similar in use
=end

my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]


pets = Hash.new

pets["Guppy"] = "Cat"

pets pets["Guppy"]

pets = {
  "Stevie" => "cat",
  "Bowser" => "hamster",
  "Kevin Sorbo" => "fish"
}

puts pets["Stevie"]
# will print "cat"

#Iterate over hashes and arrays

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

#Over Array

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each {|language| puts language}

#Over Multidimensional Array

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}

#Over Hashes

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do | hero, person|
  puts "#{hero}: #{person}"
end

#reminder hash syntaxis

#Literal form
new_hash = { "one" => 1 }

#Constructor form
new_hash = Hash.new


