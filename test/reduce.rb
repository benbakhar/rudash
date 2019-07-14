require 'rudash'
require 'test/unit'

class ReduceTest < Test::Unit::TestCase
    def test_sum_reducer
        sumer = -> (acc, current) {
            acc + current
        }

        assert_equal R_.reduce[[1, 2, 3, 4, 5], sumer], 15
    end

    def test_sum_hash_values
        hash = { a: 1, b: 2 }
        hash_sumer = -> (acc, current) { acc + current }
        result = R_.reduce[hash,hash_sumer, 0]

        assert_equal result, 3
    end
end
