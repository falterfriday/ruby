# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array.
# Also have the function return an array that only include numbers that are greater than 10
# (E.g. when you pass the array above, it should return an array with the values of 13,25,32 -
# hint: use reject or find_all method)

# def one(arr)
#   puts "Sum: #{arr.reduce(:+)}"
#   puts "greater than 10: #{arr.find_all{|i| i>10}}"
# end
# one([3,5,1,2,7,9,8,13,25,32])
#--------------------------------------------------------------------------------------------------------------------------------------

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
# Shuffle the array and print the name of each person.
# Have the program also return an array with names that are longer than 5 characters.
# def two(arr)
#   puts "Shuffled array: #{arr.shuffle}"
#   puts "Names longer than 5 characters: #{arr.find_all{|i| i.length>5}}"
# end
# two(["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"])
#--------------------------------------------------------------------------------------------------------------------------------------

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
# Shuffle the array and display the last letter of the array.
# Have it also display the first letter of the array.
# If the first letter in the array is a vowel, have it display a message

# def three
#   alphaArr = ("a".."z").to_a
#   puts "alphaArr: #{alphaArr}"
#   shuffledArr = alphaArr.shuffle
#   shuffledFirst = shuffledArr.first
#   puts "Last letter: #{shuffledArr.last}"
#   puts "First letter: #{shuffledFirst}"
#   ["a","e","i","o","u","y"].each{|i| puts "Vowel" if i == shuffledFirst}
# end
# three
#--------------------------------------------------------------------------------------------------------------------------------------

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning).
# Display all the numbers in the arrays.
# Next, display the minimum value in the array as well as the maximum value.
# puts (1..10).collect{rand(55..100)}
# randArr = (1..10).collect{rand(55..100)}
# puts "randArr: #{randArr}"
# puts "Sorted: #{randArr.sort} Min: #{randArr.sort.first} Max: #{randArr.sort.last}"
#--------------------------------------------------------------------------------------------------------------------------------------

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

# puts (65+rand(26)).chr
# def randoString
#   i = 0
#   str = ''
#   while i < 6
#     str[i] = (65+rand(26)).chr
#     i += 1
#   end
#   puts str
# end
# randoString
#
# arr = []
# i = 0
# while i <= 10
#   arr.push(randoString)
#   i += 1
# end
