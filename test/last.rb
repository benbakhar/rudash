require 'rudash'
require 'test/unit'

class LastTest < Test::Unit::TestCase
    def test_regular_array
        result = Rudash.last[[1,2,3]]
        assert_equal result, 3
    end

    def test_empty_array
        result = Rudash.last[[]]
        assert_equal result, nil
    end

    def test_hash
        result = Rudash.last[{a: 1}]
        assert_equal result, nil
    end

    def test_nil
        result = Rudash.last[nil]
        assert_equal result, nil
    end
end
