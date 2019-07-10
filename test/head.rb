require 'rudash'
require 'test/unit'

class HeadTest < Test::Unit::TestCase
    def test_regular_array
        result = Rudash.head[[1,2,3]]
        assert_equal result, 1
    end

    def test_empty_array
        result = Rudash.head[[]]
        assert_equal result, nil
    end

    def test_hash
        result = Rudash.head[{a: 1}]
        assert_equal result, nil
    end

    def test_nil
        result = Rudash.head[nil]
        assert_equal result, nil
    end
end
