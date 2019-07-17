require_relative '../lib/rudash'
require 'test/unit'

class ReduceTest < Test::Unit::TestCase
    def test_sum_reducer
        sumer = -> (acc, current) {
            acc + current
        }

        assert_equal R_.reduce[[1, 2, 3, 4, 5], sumer], 15
    end

    def test_string_reduce
        joiner = -> (acc, current) {
            acc + ',' + current
        }

        assert_equal R_.reduce['islam', joiner], 'i,s,l,a,m'
    end

    # TODO
    # def test_sum_even_indexes
    #     sumer = -> (acc, value, index) {
    #         index % 2 === 0 ? acc + value : acc
    #     }

    #     assert_equal R_.reduce[[1, 2, 3, 4, 5], sumer, 0], 15
    # end

    def test_sum_hash_values
        hash = { a: 1, b: 2 }
        hash_sumer = -> (acc, current) { acc + current }
        result = R_.reduce[hash,hash_sumer, 0]

        assert_equal result, 3
    end

    def test_sum_hash_key
        hash = { a: 1, b: 2 }
        hash_sumer = -> (acc, value, key) { key }
        result = R_.reduce[hash,hash_sumer]

        assert_equal result, :b
    end
end
