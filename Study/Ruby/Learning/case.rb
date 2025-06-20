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

movies = {
  Ghost_in_the_shell: 6.3 
}

puts "Nigga what's your favourite movie??'"
choice = gets.chomp

case choice
when "add"
  if movies[title.to_sym].nil?
    puts "Enter the tittle"
    title = gets.chomp
    puts "Enter the rating"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "The movie already exists"
  end
when "update"
  puts "Update your movie title"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Must be an error, there is no movie with that name"
  else
    rating = gets.chomp
  end
when "display"
  movies.each {|m,r| puts "#{m}: #{r}"}
when "delete"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "There's no movie to delete"
  else
    movies[title.delete]
  end
else 
  puts "Error!"
end


#The philosofy of ruby
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly