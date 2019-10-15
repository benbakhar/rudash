require_relative '../lib/rudash'
require 'test/unit'

class FlowTest < Test::Unit::TestCase
    def test_happy_flow_path
        inc_two_numbers = -> (num1, num2) { num1 + num2 }
        square = -> (number) { number * number }
        double = -> (number) { number * 2 }
        composed = R_.flow([inc_two_numbers, square, double])
        assert_equal 1800, composed.(10, 20)
    end

    def test_flow_flatten_args
        inc_two_numbers = -> (num1, num2) { num1 + num2 }
        square = -> (number) { number * number }
        double = -> (number) { number * 2 }
        composed = R_.flow([inc_two_numbers], square, double)
        assert_equal 1800, composed.(10, 20)
    end
end
