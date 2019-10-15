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

    def test_hash
        hash = { a: 1 }
        set_path = R_.curry(-> (path, value, _) {
            p "updating #{path} with #{value} in hash"
            R_.update(hash, path, -> () { value })
        })

        composed = R_.flow([
            set_path.('a', 5),
            set_path.('b', { b: 1 }),
            set_path.('c', 'string')
        ])

        result = composed.()
        p result
    end
end
