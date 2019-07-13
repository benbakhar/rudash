require 'rudash'
require 'test/unit'

class IncludesTest < Test::Unit::TestCase
    def test_match_even_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = R_.includes?[[1,2,3,4], isEven]
        assert_equal result, true
    end

    def test_mismatch_odd_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = R_.includes?[[1,3,5,7], isEven]
        assert_equal result, false
    end

    def test_nil_params
        result = R_.includes?[[1,3,5,7], nil]
        assert_equal result, false
    end

    def test_persons_hashes
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
        
        result = R_.includes?[persons, { sex: 'male' }]
        assert_equal result, true
    end
end
