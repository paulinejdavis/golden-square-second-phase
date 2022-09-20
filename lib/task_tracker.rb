class Todolist
    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
    end

    def complete(task)
        # @tasks.remove(task)
        fail "No such task" unless @tasks.include? task
        @tasks.delete(task)
    end

    def list
        return @tasks
    end
end