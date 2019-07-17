require_relative '../lib/rudash'
require 'test/unit'

class IsEmptyTest < Test::Unit::TestCase
    def test_number
        assert_equal R_.is_empty?[543], true
    end

    def test_full_array
        assert_equal R_.is_empty?[[1,2,3]], false
    end

    def test_empty_array
        assert_equal R_.is_empty?[[]], true
    end
    
    def test_hash
        assert_equal R_.is_empty?[{ a: 1 }], false
    end

    def test_empty_hash
        assert_equal R_.is_empty?[{}], true
    end

    def test_nil
        assert_equal R_.is_empty?[nil], true
    end
end
