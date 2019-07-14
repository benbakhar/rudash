require 'rudash'
require 'test/unit'

class MapTest < Test::Unit::TestCase
    def test_double_numbers
        double = -> (value) { value * 2 }
        result = R_.map[[1,2,3], double]
        assert_equal result, [2,4,6]
    end

    def test_double_even_indexes
        double_even_index = -> (value, index) {
            index % 2 === 0 ? value * 2 : value
        }
        result = R_.map[[1,2,3,4,5,6,7,8,9], double_even_index]
        assert_equal result, [2,2,6,4,10,6,14,8,18]
    end
end
