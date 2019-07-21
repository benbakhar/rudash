require_relative '../lib/rudash'
require 'test/unit'

class FlipTest < Test::Unit::TestCase
    def test_flipped_args
        subtract = -> (a, b) { a - b }
        assert_equal subtract[2, 1], 1
        flipped_subtract = R_.flip(subtract)
        assert_equal flipped_subtract.(2, 1), -1
    end
end
