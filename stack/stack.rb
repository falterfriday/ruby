class Stack
    def initialize
        @data_store = []
        @back = 0
    end
    def push(num)
        if @data_store == []
            @data_store[@back] = num
            @back = @data_store[0]
        else
            i = @data_store.length
            while i > 0
                @data_store[i] = @data_store[i-1]
                i -= 1
            end
            @data_store[0] = num
            @back = @data_store[0]
        end
        self
    end
    def pop
        if @data_store.empty?
            nil
        else
            @data_store = @data_store[1..@data_store.length-1]
            @back = @data_store[0]
            self
        end
    end
    def display_stack
        @data_store
    end
end
