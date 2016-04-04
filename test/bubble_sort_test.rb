gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  attr_reader :sorter
  def setup
    @sorter = BubbleSort.new
  end

  def test_it_initializes_the_sorter
    assert_equal BubbleSort, sorter.class
  end

  def test_it_sorts_an_empty_array
    assert_equal [""], sorter.sort([""])
  end

  def test_it_sorts_single_element_array_given_a_single_element_array
    single_value_array = ["c"]
    assert_equal single_value_array, sorter.sort(single_value_array)
  end

  def test_sort_3_element_array
    expected = ["a", "c", "h"]
    # a bit crowded in the args, but just as an example
    assert_equal expected, sorter.sort(expected.shuffle)
  end

  def test_large_array_of_numbers
    # better example, this ties the two args together
    expected = [1, 3, 4, 5, 7, 9, 22, 67]
    input = expected.shuffle
    assert_equal expected, sorter.sort(input)
  end

  def test_array_of_numbers_with_zero
    expected = [0, 3, 4, 7, 9]
    assert_equal expected, sorter.sort([4, 7, 3, 0, 9])
  end

  def test_array_of_numbers_with_negatives
    sorter.sort([4, 7, -2, 0, -4])

    expected = [-4, -2, 0, 4, 7]
    assert_equal expected, sorter.sort([4, 7, -2, 0, -4])
  end

  def test_array_of_numbers_with_duplicates
    sorter.sort([4, 7, -2, 0, -4, -4, 4])

    expected = [-4, -4, -2, 0, 4, 4, 7]
    assert_equal expected, sorter.sort([4, 7, -2, 0, -4, -4, 4])
  end

  def test_unexpected_strings
    sorter.sort(["world", "hello"])

    expected = ["hello", "world"]
    assert_equal expected, sorter.sort(["world", "hello"])
  end

end
