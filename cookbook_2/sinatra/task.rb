class Task # Model
  attr_reader :description
  attr_writer :completed

  def initialize(description, completed = false)
    @description = description
    @completed = completed
  end

  def completed?
    @completed
  end

  def completed!
    @completed = true
  end
end
