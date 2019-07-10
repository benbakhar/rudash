require 'rudash'
require 'test/unit'

class ReduceTest < Test::Unit::TestCase
    def test_sum_reducer
        sumer = -> (acc, current) {
            acc + current
        }

        assert_equal Rudash.reduce[[1, 2, 3, 4, 5], sumer], 15
    end
end
