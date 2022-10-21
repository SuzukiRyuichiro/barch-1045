class Router
  def initialize(repository)
    @controller = Controller.new(repository)
  end

  def run
    number = ask_user_for_a_number
    
  end

  def ask_user_for_a_number
    puts 'What do you wanna do?'
    puts '1: add a recipe'
    puts '2: list all recipes'
    puts '3: mark recipe as done'
    puts '4: delete a recipe'
    puts '9: quit'

    gets.chomp.to_i
  end
end
