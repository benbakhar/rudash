require_relative '../lib/rudash'
require 'test/unit'

class IsStringTest < Test::Unit::TestCase
  def test_nil
    assert_equal R_.is_string?(nil), false
  end

  def test_numeric
    assert_equal R_.is_string?(0), false
  end

  def test_string
    assert_equal R_.is_string?('string'), true
  end

  def test_array
    assert_equal R_.is_string?(%w[s t r]), false
  end
end
