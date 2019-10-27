require 'minitest/autorun'
require_relative 'odd_words'

class OddWordsTest < Minitest::Test
  def test_1
    input_string = "whats the matter with kansas."
    assert_equal "whats eht matter htiw kansas.", OddWords.new(input_string).reversed_order
  end

  def test_2
    input_string = "Here I'm the one."
    assert_equal "Here m'I the eno.", OddWords.new(input_string).reversed_order
  end
end
