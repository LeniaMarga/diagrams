#make sure your file name is the same with your class name

class Wizard
attr_reader :name

def initialize (input_name, input_wand_wood, input_wand_core )
   @name = input_name.to_s
   @wand_wood = input_wand_wood.to_s
   @wand_core = input_wand_core.to_s
end

def cast_spell(spell)

  if (@wand_wood == "holly" && @wand_core == "phoenix feather")
    return spell.upcase
  else
    return spell
  end

end

=begin
def cast_stronger_spell
  cast_spell.upcase
end
=end





end
