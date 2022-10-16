# Implement a Citizen class with the following API:

#initialize(first_name, last_name, age)
#can_vote? (boolean)
#full_name (String)
class Citizen
  def initialize(first_name, last_name, age)
    # What if the user typed JOhn or smitH
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @age = age
  end

  def can_vote?
    # check if the age is larger than 18
    if @age >= 18
    # if yes, return true
      return true
    # if no, return false
    else
      return false
    end
    # @age >= 18
  end

  def full_name
    # interpolate first and last name and return
    return "#{@first_name} #{@last_name}"
  end
end

