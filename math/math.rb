class MathClass
	attr_accessor :wooHoo
	def initialize
		@wooHoo = 0
	end
	def add(*x)
		if x.class == Array
			@wooHoo += x.flatten.reduce(:+)
		else
			@wooHoo += x
		end
		self
	end
	def subtract(*x)
		if x.class == Array
			@wooHoo -= x.flatten.reduce(:+)
		else
			@wooHoo -= x
		end
		self
	end
end

puts MathClass.new.add([1,2,3], 2, 5).subtract(5,1).wooHoo
