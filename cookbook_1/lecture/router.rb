require_relative 'repository'
require_relative 'controller'

class Router
  def initialize
    # what's here
    repository = Repository.new
    @controller = Controller.new(repository)
  end

  def run
    running = true
    while running
      # ask users what they want to do
      puts 'What do you wanna do?🤔'
      puts '1 - Add a task ✍️'
      puts '2 - List tasks 📜'
      puts '3 - Mark a task 🙌'
      puts '4 - Remove a task 🗑'
      puts '9 - Quit 🚪'
      choice = gets.chomp.to_i

      display_divider unless choice == 9

      case choice
      when 1
        @controller.create
        load_and_done
        wait_and_clear(1)
      when 2
        @controller.list
        wait_and_clear(4)
      when 3
        @controller.mark_as_done
        load_and_done
        wait_and_clear(1)
      when 4
        @controller.destroy
        load_and_done
        wait_and_clear(1)
      when 9
        running = false
      else
        puts 'Please choose from 1 to 4 pr 9'
        wait_and_clear(2)
      end
    end
  end

  private

  def wait_and_clear(sec)
    sleep(sec)
    puts `clear`
  end

  def display_divider
    puts '=' * 100
  end

  def load_and_done
    4.times do
      print '.'
      sleep(0.5)
    end
    print('done!')
  end
end
