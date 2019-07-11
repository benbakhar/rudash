require 'rudash'
require 'test/unit'

class IsNilTest < Test::Unit::TestCase
    def test_ruby_alias
        assert_nothing_raised do R_.is_nil end
    end

    def test_nil
        assert_equal R_.isNil[nil], true
    end

    def test_not_nil
        assert_equal R_.isNil[0], false
    end
end
