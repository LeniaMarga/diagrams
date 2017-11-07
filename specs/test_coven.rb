require('minitest/autorun')
require('minitest/rg')
require_relative('../wizard_after_wand.rb')
require_relative('../wand.rb')
require_relative('../coven.rb')

class TestCoven < Minitest::Test

  def setup
    @broken_wand = Wand.new("oak", "unicorn hair")
    @elder_wand = Wand.new("holly", "phoenix feather")
    @ron = Wizard.new("Ron Weasley", @broken_wand)
    @harry = Wizard.new("Harry Potter", @elder_wand)
    @wizards = [@ron, @harry]
    @coven = Coven.new(@wizards)
  end

  def test_list_of_wizards
    assert_equal([@ron, @harry], @coven.list_of_wizards)
  end

  def test_spells_array
    result = @coven.cast_spell("stupify")
    assert_equal(["stupify","STUPIFY"], result)
  end

end
