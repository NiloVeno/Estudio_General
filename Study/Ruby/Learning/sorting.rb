my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

my_array.sort!
print my_array
#It will sort the numbers on a minor to major way

# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# How might we sort! the books in alphabetical order? (Hint, hint)
books.sort!

#How to sort on different order? Using the <=> comparator

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! {|firstBook, secondBook|
secondBook <=> firstBook}


#Methods + sorting
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"


#Sorting + Control Flow
def alphabetize(arr, rev = false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
    return arr
  end
end

numbers = [3, 5, 1, 6]

puts alphabetize(numbers, true)