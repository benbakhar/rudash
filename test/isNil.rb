require 'rudash'
require 'test/unit'

class IsNilTest < Test::Unit::TestCase
    def test_nil
        assert_equal R_.isNil[nil], true
    end

    def test_not_nil
        assert_equal R_.isNil[0], false
    end
end
