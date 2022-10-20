class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @completed = false
  end

  # TODO: be able to mark a task as done
  def mark_as_done!
    @completed = true
  end

  def done?
    @completed
  end
end
