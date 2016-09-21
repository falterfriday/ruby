require_relative 'stack'
RSpec.describe Stack do
    before do
        @stack = Stack.new
    end
    it "checks new stack for empty data_store" do
        expect(@stack.display_stack).to match_array([])
    end
    it "checks that @back is not settable" do
        expect{@stack.back}.to raise_error(NameError)
        expect{@stack.back = 4}.to raise_error(NoMethodError)
    end
    it "check that the push method is working" do
        @stack.push(3).push(2).push(1)
        expect(@stack.display_stack).to match_array([1,2,3])
        @stack.push(4).push(5).push(6)
        expect(@stack.display_stack).to match_array([6,5,4,1,2,3])
    end
    it "check if the pop method is working" do
        @stack.push(3).push(2).push(1).pop.pop
        expect(@stack.display_stack).to match_array([3])
    end
end
