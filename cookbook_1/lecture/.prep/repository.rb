class Repository
  def initialize
    @tasks = []
  end

  # TODO: add a task to tasks
  def add(task) # We expect a task instance to be the argument
    @tasks << task
  end

  # TODO: return all the tasks
  def all
    @tasks
  end

  # TODO: remove a task from tasks
  def remove(index)
    @tasks.delete_at(index)
  end

  # TODO: get a specific task out of the repository
  def find(index)
    @tasks[index]
  end
end
