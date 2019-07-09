require 'rudash'
require 'test/unit'

class ConcatTest < Test::Unit::TestCase
    def test_concat_arrays
        result = Rudash.concat[[1,2,3], [4]]
        assert_equal result, [1,2,3,4]
    end

    def test_concat_nil
        result = Rudash.concat[[1,2,3], nil]
        assert_equal result, [1,2,3,nil]
    end

    def test_concat_objects
        result = Rudash.concat[1, { a: 1 }]
        assert_equal result, [1, { a: 1 }]
    end
end
