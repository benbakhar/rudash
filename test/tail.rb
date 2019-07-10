require 'rudash'
require 'test/unit'

class TailTest < Test::Unit::TestCase
    def test_regular_array
        result = Rudash.tail[[1,2,3]]
        assert_equal result, [2,3]
    end

    def test_empty_array
        result = Rudash.tail[[]]
        assert_equal result, []
    end

    def test_hash
        result = Rudash.tail[{a: 1}]
        assert_equal result, []
    end

    def test_nil
        result = Rudash.tail[nil]
        assert_equal result, []
    end
end
