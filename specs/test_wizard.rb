require('minitest/autorun')
require('minitest/rg')
require_relative('../wizard.rb')


class TestWizard < Minitest::Test
 def setup

   @ron = Wizard.new("Ron Weasley", "oak", "unicorn hair")
   @harry = Wizard.new("Harry Potter", "holly", "phoenix feather")
 end

def test_wizard_has_name
  assert_equal("Ron Weasley", @ron.name)
end

def test_can_cast_spell
  assert_equal("stupify", @ron.cast_spell("stupify"))
end

def test_can_cast_stronger_spell
  assert_equal("EXPECTO PATRONUM", @harry.cast_spell("expecto patronum"))
end



end
