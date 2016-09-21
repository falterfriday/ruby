module MyEnumerable
  def my_each
    for i in 0...self.length
      puts self[i]
    end
  end
end

# [1,2,3,4].my_each {|i| puts i}
