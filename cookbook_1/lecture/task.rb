class Task # Model
  attr_reader :description
  attr_writer :completed

  def initialize(description)
    @description = description
    @completed = false
  end

  def done?
    @completed
  end

  def completed!
    @completed = true
  end
end
