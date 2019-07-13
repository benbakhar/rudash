require 'rudash'
require 'test/unit'

class FindLastTest < Test::Unit::TestCase
    def test_match_even_numbers
        is_even = -> (value) { value % 2 === 0 }
        result = R_.find_last[[1,2,3,4], is_even]
        assert_equal result, 4
    end

    def test_mismatch_odd_numbers
        is_even = -> (value) { value % 2 === 0 }
        result = R_.find_last[[1,3,5,7], is_even]
        assert_equal result, nil
    end

    def test_nil_params
        result = R_.find_last[[1,3,5,7], nil]
        assert_equal result, nil
    end

    def test_persons_hashes
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
        
        result = R_.find_last[persons, { sex: 'female' }]
        assert_equal result, { name: 'ruth', sex: 'female' }
    end
end
