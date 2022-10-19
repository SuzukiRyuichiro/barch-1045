class SlotMachine
  SYMBOL = ["cherry", "seven", "bell", "star", "joker"]

  def initialize(reels)
    # expects reels to be an array of string like ['joker', 'bell', 'star']
    @reels = reels
  end


  def score
    if @reels[0] == @reels[1] && @reels[1] == @reels[2] # @reels.uniq.length == 1
      # if all of the reels are the same give a score
      return (SYMBOL.index(@reels[0]) + 1) * 10
    elsif @reels.filter { |elm| elm == 'joker' }.length == 2
      # if 2 of the same kind give a score and the one that is repeating is joker (i.e. bell, joker, joker)
      return 25
    elsif @reels.uniq.length == 2 && @reels.include?('joker')
      # if there is only two symbols in the reels and one of them is a joker
      some_other_symbol = @reels.reject { |elm| elm == 'joker' }[0] # kick out joker from the array and get the left over
      return (SYMBOL.index(some_other_symbol) + 1) * 5
    elsif @reels.uniq.length == 3
      # if all of them are different 0
      return 0
    else
      # other cases such as cherry, cherry, seven
      return 0
    end
  end
end
