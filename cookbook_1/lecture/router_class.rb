# For the sake of transition from test.rb to router.rb
# I didn't include making the router into a class
# but we can make a router into a class as well, and use
# an instance of router to run the app. It is just adding
# another layer of abstraction

require_relative 'controller'

class Router
  def initialize(repository)
    @repository = repository
    @controller = Controller.new(repository)
  end

  def run
    done = false
    until done
      number = ask_for_action_number
      case number
      when 1
        @controller.add_task
      when 2
        @controller.list
      when 3
        @controller.mark_done
      when 4
        @controller.destroy
      when 9
        done = true
      else
        puts 'please choose 1 to 4 or 9'
      end
    end
  end

  def ask_for_action_number
    puts 'What do you wanna do??'
    puts '1 - add a task'
    puts '2 - list the task'
    puts '3 - mark a task as done'
    puts '4 - delete a task'
    puts '9 - quit'

    gets.chomp.to_i
  end
end
