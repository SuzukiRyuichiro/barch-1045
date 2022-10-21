class Repository
  def initialize
    @tasks = []
  end

  def add(task) # we expect task to be an instance of a task
    @tasks.push(task)
  end

  def all
    # return all of the tasks
    @tasks
  end

  def find(index)
    # return a task at index
    @tasks[index]
  end

  def destroy(index)
    # remove the task at index
    @tasks.delete_at(index)
  end
end
