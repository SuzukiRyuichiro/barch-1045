class SlotMachine
  attr_reader :reels

  SYMBOLS = %w[cherry seven bell star joker] # this is an easier way to write ["cherry", "seven", "bell", "star", "joker"]

  # TODO: initialize
  def initialize(reels = [])
    @reels = reels
  end

  # TODO: calculate the score with #score
  def score
      # if all of them are the same, return score accordingly
    if all_the_same? # -> refactor condition to a method
      uniq_symbol = @reels[0] # because all of them are the same, doesn't matter which one
      return (SYMBOLS.index(uniq_symbol) + 1) * 10
    elsif two_of_the_same_and_a_joker? # -> refactor condition to a method
      # We have to know which one is the duplicating symbol
      repeating_symbol = @reels.sort[1] # this is the tricky one. explanation below ↓
      # when you sort two of the same and some other symbol (i.e. ['cherry', 'joker', 'cherry'])
      # you can see that the repeating symbol will be in the middle all the time if you sort the array ['cherry', 'cherry', 'joker']
      # and because two_of_the_same_and_a_joker? already checked that it includes at least one joker
      # we can just multiply the symbol in the middle by 5
      return (SYMBOLS.index(repeating_symbol) + 1) * 5
    else
      # else return 0
      return 0
    end
  end

  def play
    # This is something we couldn't implement today but will basically
    # it just pushes random symbol three time
    @reels = []
    3.times do
      @reels << SYMBOLS.sample
    end
		@reels
  end

  private

  def all_the_same?
    # If all the same, ['cherry', 'cherry', 'cherry'].uniq -> ['cherry']
    @reels.uniq.count == 1
  end

  def two_of_the_same_and_a_joker?
    # ['cherry', 'cherry', 'joker'].uniq -> ['cherry', 'joker']
    @reels.uniq.count == 2 && @reels.include?('joker')
  end


  # This is just a refactored version of what we did today
  # You can call this inside two_of_the_same_and_a_joker? condition

  # elsif two_of_the_same_and_a_joker?
  #   two_of_the_same_alt
  # else
  #   return 0
  # end

  def two_of_the_same_alt # Simpler to understand
    if @reels.count('joker') == 2
      # Two Jokers + something -> 25
      return 25
    else
      # Two of the same + Joker -> (index + 1) * 5
      other_symbol = @reels.reject{ |symbol| symbol == 'joker' }[0]
      return (SYMBOLS.index(other_symbol) + 1) * 5
    end
  end
end
