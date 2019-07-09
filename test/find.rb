gem 'test-unit'
require 'rudash'
require 'test/unit'

class FindTest < Test::Unit::TestCase
    def test_match_even_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = Rudash.find[[1,2,3,4], isEven]
        assert_equal result, 2
    end

    def test_mismatch_odd_numbers
        isEven = -> (value) { value % 2 === 0 }
        result = Rudash.find[[1,3,5,7], isEven]
        assert_equal result, nil
    end

    def test_nil_params
        result = Rudash.find[[1,3,5,7], nil]
        assert_equal result, nil
    end

    def test_persons_hashes
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
        
        result = Rudash.find[persons, { sex: 'female' }]
        assert_equal result, { name: 'sabel', sex: 'female' }
    end
end
