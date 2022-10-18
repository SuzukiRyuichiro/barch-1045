require_relative 'task'
require_relative 'repository'

task1 = Task.new('walk the dog!!!')
task2 = Task.new('do the flashcards!!!')

repo = Repository.new

# Add task1 (instance) to the task repository (instance)
repo.add(task1)
repo.add(task2)

p repo.all

task_at_index_1 = repo.find(1)
task_at_index_1.mark_as_done!

puts '-' * 100
p repo.all
