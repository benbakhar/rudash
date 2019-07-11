require 'rudash'
require 'test/unit'

class FlipTest < Test::Unit::TestCase
    def test_flipped_args
        subtract = -> (a, b) { a - b }
        assert_equal subtract[2, 1], 1
        flippedSubtract = R_.flip[subtract]
        assert_equal flippedSubtract[2, 1], -1
    end
end
