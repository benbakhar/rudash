gem 'test-unit'
require 'rudash'
require 'test/unit'

class FilterTest < Test::Unit::TestCase
    def test_filter_evens
        isEven = -> (value) { value % 2 === 0 }
        result = Rudash.filter[[1,2,3,4], isEven]
        assert_equal result, [2,4]
    end

    def test_filter_hashes_by_hash
        persons = [
            { name: 'islam', sex: 'male' },
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
        result = Rudash.filter[persons, { sex: 'female' }]
        assert_equal result, [
            { name: 'sabel', sex: 'female' },
            { name: 'ruth', sex: 'female' }
        ]
    end

    def test_nil_params
        result = Rudash.filter[nil, nil]
        assert_equal result, []
    end
end
