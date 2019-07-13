require 'rudash'
require 'test/unit'

class RejectTest < Test::Unit::TestCase
    def test_reject_evens
        is_even = -> (value) { value % 2 === 0 }
        result = R_.reject[[1,2,3,4], is_even]
        assert_equal result, [1,3]
    end

    def test_reject_hashes_by_hash
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'sonia', sex: 'female' }
        ]
        result = R_.reject[persons, { sex: 'female' }]
        assert_equal result, [
            { name: 'islam', sex: 'male' }
        ]
    end

    def test_nil_params
        result = R_.reject[nil, nil]
        assert_equal result, []
    end
end
