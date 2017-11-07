require('minitest/autorun')
require('minitest/rg')
require_relative('../wand.rb')

class TestWand < Minitest::Test

  def setup
    @wand_wood = Wand.new("holly", "phoenix feather")
  end

  def test_wand_got_wood
    assert_equal("holly", @wand_wood.wood)
  end

  def test_wand_got_core
    assert_equal("phoenix feather", @wand_wood.core)
  end

end
