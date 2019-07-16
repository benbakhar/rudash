require 'rudash'
require 'test/unit'

class CurryTest < Test::Unit::TestCase
    def test_curry
        inc = -> (a, b) { a + b }
        incByOne = R_.curry[inc][1]
        assert_equal incByOne[3], 4
    end

    def test_expected_proc_exception
        assert_raise do
            R_.curry[{}]
        end
    end
end
