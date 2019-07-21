require_relative '../lib/rudash'
require 'test/unit'

class IsHashTest < Test::Unit::TestCase
    def test_number
        assert_equal R_.is_hash?(543), false
    end

    def test_array
        assert_equal R_.is_hash?([1,2,3]), false
    end
    
    def test_hash
        assert_equal R_.is_hash?({ a: 1 }), true
    end

    def test_nil
        assert_equal R_.is_hash?(nil), false
    end
end
