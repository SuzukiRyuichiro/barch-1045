require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    # We will code as we need
    @repository = repository
    @view = View.new
  end

  # Create
  def create
    # ask for use input
    description = @view.ask_for_description
    # create a task
    task = Task.new(description)
    # add it to the repository
    @repository.add(task)
  end

  # Read
  def list
    display_tasks
  end

  # Update
  def mark_as_done
    display_tasks
    # ask for which task to update
    index = @view.ask_user_for_index("mark")
    # update the state of a task in the repository
    # find the task
    task = @repository.find(index)
    # update the state
    task.mark_as_done!
  end

  # Delete
  def destroy
    display_tasks
    # ask for which task to update
    index = @view.ask_user_for_index("delete")
    # tell the repo to delte that index
    task = @repository.remove(index)
  end

  private

  def display_tasks
    # get all the tasks from the repository
    tasks = @repository.all
    # pass that onto view's display method
    @view.display(tasks)
  end
end
