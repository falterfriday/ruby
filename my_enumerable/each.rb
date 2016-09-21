require_relative 'my_enumerable'
class Array
  include MyEnumerable
end

[1,2,3].my_each {|i| puts i}
