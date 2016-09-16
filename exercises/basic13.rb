# Print 1-255
# (1..255).each {|i| puts i}
#---------------------------------------------

# Print Odd numbers 1-255
# puts (1..255).find_all{|i| i % 2 != 0}
#---------------------------------------------

# Print Sum --not working--
# (1..255).each {|i, sum = 0| puts "#{i} + #{}"}
#---------------------------------------------

# Iterating through an array
# def iterate(arr)
# 	arr.each {|i| puts i}
# end
# iterate([1,"cow",3,4,8,"six"])
#---------------------------------------------

# Find Max
# def findMax(arr)
# 	puts arr.sort.last
# end
#---------------------------------------------

# Get Average
# def getAvg(arr)
# 	sum = 0*1.0
# 	arr.map!{|i| sum += i}
# 	puts sum/arr.length
# end
# getAvg([1,2,3])
#---------------------------------------------

#Array with Odd numbers
# def oddArray
# 	y = []
# 	i = 0
# 	while i < 256
# 		if i%2 != 0
# 			y.push(i)
# 		end
# 		i += 1
# 	end
# 	puts y
# end
# oddArray
#---------------------------------------------

# Greater than Y
# def greatY(arr, y)
# 	count = 0
# 	i = 0
# 	while i < arr.length
# 		if arr[i] > y
# 			count += 1
# 		end
# 		i += 1
# 	end
# 	puts count
# end
# greatY([123,4356,23,145,657,5342,342], 23)
#---------------------------------------------

# Square the Value
# def square(arr)
# 	arr.map!{|i| i*i}
# 	puts arr
# end
# square([1,2,3,4,5,6])
#---------------------------------------------

# Eliminate the Negatives
# def noNeg(arr)
# 	i = 0
# 	while i < arr.length
# 		if arr[i]<0
# 			arr[i] = 0
# 		end
# 		i += 1
# 	end
# 	puts arr
# end
# noNeg([-1,4,6,-3,5])
#---------------------------------------------

# Min, Max, Average
# def allTheThings(arr)
# 	puts "max = #{arr.sort.last}"
# 	puts "min = #{arr.sort.first}"
# 	sum = 0
# 	arr.each{|i| sum += i}
# 	puts "avg = #{sum/arr.length}"
# end
# allTheThings([1,2,5,34,2,3])
#---------------------------------------------

# Shifting Values
# def shift(arr)
# 	arr.slice!(0)
# 	arr.push(0)
# 	puts arr
# end
# shift([1,2,3,4])
#---------------------------------------------

# Number to String
# def numToString(arr)
# 	i = 0
# 	while i < arr.length
# 		if arr[i]<0
# 			arr[i] = "Dojo"
# 		end
# 		i += 1
# 	end
# 	puts arr
# end
# numToString([-1,4,6,-3,5])
