require 'rudash'
require 'test/unit'

class FindLastTest < Test::Unit::TestCase
    def test_ruby_alias
        assert_nothing_raised do R_.find_last end
    end

    def test_match_even_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = R_.findLast[[1,2,3,4], isEven]
        assert_equal result, 4
    end

    def test_mismatch_odd_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = R_.findLast[[1,3,5,7], isEven]
        assert_equal result, nil
    end

    def test_nil_params
        result = R_.findLast[[1,3,5,7], nil]
        assert_equal result, nil
    end

    def test_persons_hashes
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
        
        result = R_.findLast[persons, { sex: 'female' }]
        assert_equal result, { name: 'ruth', sex: 'female' }
    end
end
