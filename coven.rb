class Coven
  attr_accessor :wizard_array

  def initialize(input_wizard_array)
    @wizard_array = input_wizard_array
  end

  def list_of_wizards
    return @wizard_array
  end

  def spells_array(spell)
    @wizard_array.cast_spell(spell)
  end

end
