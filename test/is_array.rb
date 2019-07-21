require_relative '../lib/rudash'
require 'test/unit'

class IsArrayTest < Test::Unit::TestCase
    def test_number
        assert_equal R_.is_array?(543), false
    end

    def test_array
        assert_equal R_.is_array?([1,2,3]), true
    end
    
    def test_hash
        assert_equal R_.is_array?({ a: 1 }), false
    end

    def test_nil
        assert_equal R_.is_array?(nil), false
    end
end
