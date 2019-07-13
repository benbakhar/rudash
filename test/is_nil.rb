require 'rudash'
require 'test/unit'

class IsNilTest < Test::Unit::TestCase
    def test_nil
        assert_equal R_.is_nil?[nil], true
    end

    def test_not_nil
        assert_equal R_.is_nil?[0], false
    end
end
