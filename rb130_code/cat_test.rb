require 'minitest/autorun'
# require 'minitest/reporters'
# Minitest::Reporters.use!

require_relative 'cat'

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty', 5)
  end

  def test_is_cat
    skip
  end

  def test_name
    assert_equal('Kitty', @kitty.name)
  end

  def test_miaow
    assert(@kitty.miaow.include?(' is miaowing.'))
  end

  def test_raises_error
    assert_raises do
      Cat.new
    end
  end

  def test_is_not_purrier
    patch = Cat.new('Patch', 5)
    milo = Cat.new('Milo', 3)

    refute(patch.purr_factor > milo.purr_factor)
  end
end