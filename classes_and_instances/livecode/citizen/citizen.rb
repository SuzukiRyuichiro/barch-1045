class Citizen
  def initialize(first_name, second_name, age)
    @first_name = first_name.capitalize
    @second_name = second_name.capitalize # "leNNOn"
    @age = age
  end

  def can_vote?
    #if age is >= 18 return true
    #if not false
    # if @age >= 18
    #   return true
    # else
    #   return false
    # end
    @age >= 18
  end

  def full_name
    "#{@first_name} #{@second_name}"
  end

end


