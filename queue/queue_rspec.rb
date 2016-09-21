require_relative 'queue'
RSpec.describe Queue do
    before do
        @queue = Queue.new
    end
    it "checks that queue has been initialized" do
        expect(@queue.display_queue).to match_array([])
    end
    it "checks that @back is not settable" do
        expect{@queue.back}.to raise_error(NameError)
        expect{@queue.back = 4}.to raise_error(NoMethodError)
    end
    it "checks that enqueue method adds num to data_store" do
        @queue.enqueue(1).enqueue(2).enqueue(3).enqueue(4)
        expect(@queue.display_queue).to match_array([4,3,2,1])
    end
    it "checks that dequeue method removes a num from data_store" do
        @queue.enqueue(1).enqueue(2).enqueue(3).enqueue(4)
        expect(@queue.dequeue.display_queue).to match_array([4,3,2])
        expect(@queue.dequeue.dequeue.dequeue.dequeue.display_queue).to eq([])
    end
    it "checks that max method works" do
        @queue.enqueue(1).enqueue(2).enqueue(3).enqueue(4)
        expect(@queue.max).to eq(4)
    end
    it "checks that min method works" do
        @queue.enqueue(1).enqueue(2).enqueue(3).enqueue(4)
        expect(@queue.min).to eq(1)
    end
end
