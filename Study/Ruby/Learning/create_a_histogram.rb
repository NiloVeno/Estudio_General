puts "Write something lil nigga: "
text = gets.chomp
words = text.split

frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, count|
  count
end

frequencies.reverse!

frequencies.each {|word, count| puts word + " " + count.to_s}