require_relative '../lib/rudash'
require 'test/unit'

class FilterTest < Test::Unit::TestCase
  def test_filter_evens
    is_even = -> (value) { value % 2 === 0 }
    result = R_.filter([1,2,3,4], is_even)
    assert_equal result, [2,4]
  end
  
  def test_filter_hashes_by_hash
    persons = [
      { name: 'islam', sex: 'male' },
      { name: 'sabel', sex: 'female' },
      { name: 'sonia', sex: 'female' }
    ]
    result = R_.filter(persons, { sex: 'female' })
    assert_equal result, [
      { name: 'sabel', sex: 'female' },
      { name: 'sonia', sex: 'female' }
    ]
  end
  
  def test_filter_hashes_by_deep_hash
    persons = [
      { name: { first: 'islam', last: 'attrash' }, sex: 'male' },
      { name: 'sabel', sex: 'female' },
      { name: 'sonia', sex: 'female' }
    ]
    
    result = R_.filter(persons, { name: { first: 'islam' } })
    assert_equal result, [{ name: { first: 'islam', last: 'attrash' }, sex: 'male' }]
    
    result2 = R_.filter(persons, { name: { first: 'islamx' } })
    assert_equal result2, []
    
    persons = [
      { name: { first: ['islam', 'i'], last: 'attrash' }, sex: 'male' },
      { name: 'sabel', sex: 'female' },
      { name: 'sonia', sex: 'female' }
    ]
    
    result3 = R_.filter(persons, { name: { first: ['i'] } })
    assert_equal result3, [{ name: { first: ['islam', 'i'], last: 'attrash' }, sex: 'male' }]
  end
  
  def test_default_filter
    result = R_.filter([1,0, nil, { a: 1 }])
    assert_equal result, [1, 0, { a: 1 }]
  end
  
  def test_filter_with_wrong_proc
    result = R_.filter([1,0, nil, { a: 1 }], 5)
    assert_equal result, []
  end
  
  def test_hash_without_filter
    result = R_.filter({ a: 1, b: nil })
    assert_equal result, [1]
  end
  
  def test_hash_with_value_filter
    is_even = -> (v, k) { v % 2 === 0 }
    result = R_.filter({ a: 1, b: 2, c: 3, d: 4 }, is_even)
    assert_equal result, [2, 4]
  end
  
  def test_hash_with_key_filter
    key_bigger_than_a = -> (v, k) { k > :a }
    result = R_.filter({ a: 1, b: 2, c: 3, d: 4 }, key_bigger_than_a)
    assert_equal result, [2,3,4]
  end
  
  def test_no_collection
    result = R_.filter(1)
    assert_equal result, []
  end
end
