# puts ["ant", "bear", "cat"].any? {|number| number.length >= 5}

# ["ant", "bear", "cat"].each {|word| print word, "--"}

# puts (1..4).collect {|i| i*i}

# puts (1..10).detect { |i| i % 5 == 0 and i % 7 == 0 }
#==>nil
# puts (1..100).detect { |i| i % 5 == 0 and i % 7 == 0 }
# ==> 35

# puts (1..10).find_all { |i| i % 3 == 0 }
# puts (1..10).select { |i| i % 3 == 0 }

# puts (1..10).reject { |i| i % 3 == 0 }

# x = 5.upto(10) { |i| print i, " " }
# puts x
