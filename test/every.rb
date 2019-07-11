require 'rudash'
require 'test/unit'

class EveryTest < Test::Unit::TestCase
    def test_mismatch_even_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = R_.every[[1,2,3,4], isEven]
        assert_equal result, false
    end

    def test_match_odd_numbers
        isOdd = -> (value) { value % 2 != 0 }
        result = R_.every[[1,3,5,7], isOdd]
        assert_equal result, true
    end

    def test_nil_params
        result = R_.every[[1,3,5,7], nil]
        assert_equal result, false
    end

    def test_persons_hashes
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
        
        result = R_.every[persons, { sex: 'male' }]
        assert_equal result, false
    end
end
