require_relative '../lib/rudash'
require 'test/unit'

class NegateTest < Test::Unit::TestCase
    def test_negate
        is_even = -> (value) { value % 2 === 0 }
        is_odd = R_.negate[is_even]

        assert_equal is_even[2], true
        assert_equal is_even[1], false
        assert_equal is_odd[1], true
        assert_equal is_odd[2], false
    end
end
