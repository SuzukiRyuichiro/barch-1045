require 'csv'

class Repository
  def initialize(csv_file_path)
    @tasks = []
    @csv_file_path = csv_file_path
    load
  end

  def add(task) # we expect task to be an instance of a task
    @tasks.push(task)
    save
  end

  def all
    # return all of the tasks
    @tasks
  end

  def find(index)
    # return a task at index
    @tasks[index]
  end

  def remove(index)
    # remove the task at index
    @tasks.delete_at(index)
    save
  end

  def mark_as_done(index)
    @tasks[index].completed!
    save
  end

  private

  def load
    CSV.foreach(@csv_file_path) do |row|
      @tasks << Task.new(row[0], row[1] == 'true')
    end
  end

  def save
    CSV.open(@csv_file_path, 'wb') do |csv|
      @tasks.each do |task|
        csv << [task.description, task.completed?]
      end
    end
  end
end
