class Queue
    def initialize
        @data_store = []
        @back = 0
    end
    def enqueue(num)
        if @data_store.empty?
            @data_store[@back] = num
        else
            i = @data_store.length
            while i > 0
                @data_store[i] = @data_store[i-1]
                i -= 1
            end
            @data_store[0] = num
            @back = @data_store[-1]
        end
        self
    end
    def dequeue
        if @data_store.empty?
            nil
        elsif @data_store.length == 1
            @data_store = []
            @back = 0
        else
            @data_store = @data_store[0..@data_store.length-2]
            @back = @data_store[-1]
        end
        self
    end
    def max
        if @data_store.empty?
            "queue is empty"
        else
            @max = @data_store.sort().last
        end
        @max
    end
    def min
        if @data_store.empty?
            "queue is empty"
        else
            @min = @max = @data_store.sort().first
        end
        @min
    end
    def display_queue
        @data_store
    end

end


# queue = Queue.new
# queue.enqueue(1).enqueue(2).enqueue(-4).enqueue(4)
# puts queue.min
