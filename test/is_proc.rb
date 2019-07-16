require 'rudash'
require 'test/unit'

class IsProcTest < Test::Unit::TestCase
    def test_not_proc
        assert_equal R_.is_proc?[{}], false
    end

    def test_proc
        is_even = -> (value) { value % 2 === 0 }
        assert_equal R_.is_proc?[is_even], true
    end
end
