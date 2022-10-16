class SlotMachine
  attr_reader :set

  SYMBOLS = %w[cherry seven bell star joker].freeze

  # TODO: initialize
  def initialize(set = [])
    @set = set
  end
  # TODO: calculate the score with #score
  def score
      # if all of them are the same, return score accordingly
    if all_the_same
      uniq_symbol = @set[0]
      return (SYMBOLS.index(uniq_symbol) + 1) * 10
    elsif two_of_the_same_and_a_joker
      # We have to know which one is the duplicating symbol
      repeating_symbol = @set.sort[1]
      return (SYMBOLS.index(repeating_symbol) + 1) * 5
    else
      # else return 0
      return 0
    end
  end

  def play
    @set = []
    3.times do
      @set << SYMBOLS.sample
    end
  end

  private

  def all_the_same
    @set.uniq.count == 1
  end

  def two_of_the_same_and_a_joker
    @set.uniq.count == 2 && @set.include?('joker')
  end

  def two_of_the_same_alt # Simple to understand
    if @set.count('joker') == 2
      # Two Jokers + somethign -> 25
      return 25
    else
      # Two of the same + Joker -> (index + 1) * 5
      other_symbol = @set.reject{ |symbol| symbol == 'joker' }[0]
      return (SYMBOLS.index(other_symbol) + 1) * 5
    end
  end
end
