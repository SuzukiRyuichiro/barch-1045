class View # this is like a web browser for us. printing and getting use input
  def display(tasks) # expects an array of task instances
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - #{task.done? ? '✅' : '⬜️'} #{task.description}"
    end
  end

  def ask_for_description
    puts 'Give a description of the task'
    print '> '
    gets.chomp
  end

  def ask_user_for_index(action)
    puts "Which task would you like to #{action}?"
    print '> '
    gets.chomp.to_i - 1
  end
end
