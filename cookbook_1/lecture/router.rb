require_relative 'repository'
require_relative 'controller'

# view = View.new

# task_1 = Task.new('make a todo list')
# task_2 = Task.new('make a coffee')

# repo = Repository.new

# Add tasks to the repository
# repo.add(task_1) # @tasks = [task_1]
# repo.add(task_2) # @tasks = [task_1, task_2]

# TODO: display all of the tasks
# ask the repo to give all the tasks
# tasks = repo.all
# view.display(tasks)

# TODO: let users type what the description is
# view asks for the input
# description = view.ask_for_description
# # instantiate a new task
# new_task = Task.new(description)
# # add them to the repository
# repo.add(new_task)

repository = Repository.new
controller = Controller.new(repository)

done = false

until done
  puts 'What do you wanna do??'
  puts '1 - add a task'
  puts '2 - list the task'
  puts '3 - mark a task as done'
  puts '4 - delete a task'
  puts '9 - quit'

  choice = gets.chomp.to_i
  puts `clear`

  case choice
  when 1
    controller.add_task
  when 2
    controller.list
  when 3
    controller.mark_done
  when 4
    controller.destroy
  when 9
    done = true
  else
    puts 'please choose 1 to 4 or 9'
  end
end
