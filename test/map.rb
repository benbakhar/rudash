require 'rudash'
require 'test/unit'

class MapTest < Test::Unit::TestCase
    def test_double_numbers
        double = -> (value) { value * 2 }
        result = Rudash.map[[1,2,3], double]
        assert_equal result, [2,4,6]
    end
end
