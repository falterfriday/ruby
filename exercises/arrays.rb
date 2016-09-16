#
# .shuffle
# .join
# .insert
# values_at()

# array = ['zero', 'one', 'two', 'three', 'four', 'wow', 'ruby', 'seems', 'simple']

#grabs the object/int/string at the specified indices
# puts array.at(3)

#deletes the specified parameter from the array IF it exists
# array.delete('one')
# puts array

# reverses array BUT returns new array
# puts array.reverse

# length of array
# puts array.length

# sorts array alphanumerically
# can sort by using second notation or chaining .reverse
# puts array.sort{|x,y| y <=>x }
# puts array.sort.reverse

# "slices" the value out of the array at the given parameter
# puts array.slice(1)
# puts array

# shuffles the array
# puts array.shuffle

# takes an array and joins the values_at
# if parameter is passed, will add param between each value
# "double quotes required"
# puts array.join(", ")

# inserts the value(s) passed at the specified indices
# array.insert(2, "eiuwhf", "waoweifjwe")
# puts array

# creates a new array of the values specified
# puts array.values_at(2...4)
