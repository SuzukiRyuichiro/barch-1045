class View
  def display(tasks) # array of task instances
    # display all of them nicely
    # 1 - ✅ ⬜️ description
    # 2 - ✅ ⬜️ description
    # 3 - ✅ ⬜️ description
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - #{task.done? ? '✅' : '⬜️'} #{task.description}"
    end
  end

  def ask_for_description
    puts 'What is the task???'
    gets.chomp
  end

  def ask_user_for_index
    puts 'What number'
    gets.chomp.to_i - 1
  end
end
