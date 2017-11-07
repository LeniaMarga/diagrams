class Wand
  attr_reader :wood, :core

  def initialize(input_wood, input_core)
    @wood = input_wood
    @core = input_core
  end



  def cast_spell(spell)
    if (@wood == "holly" && @core == "phoenix feather")
      return spell.upcase
    else
      return spell
    end
  end
end
