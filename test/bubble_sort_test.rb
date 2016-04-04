gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_initialize
    sorter = BubbleSort.new

    assert_equal BubbleSort, sorter.class
  end

  def test_sort_empty_array
    sorter = BubbleSort.new
    sorter.sort([""])

    expected = [""]
    assert_equal expected, sorter.sort([""])
  end

  def test_sort_1_element_array
    sorter = BubbleSort.new
    sorter.sort(["c"])

    expected = ["c"]
    assert_equal expected, sorter.sort(["c"])
  end

  def test_sort_3_element_array
    sorter = BubbleSort.new
    sorter.sort(["c", "h", "a"])

    expected = ["a", "c", "h"]
    assert_equal expected, sorter.sort(["c", "h", "a"])
  end

  def test_large_array_of_numbers
    sorter = BubbleSort.new
    sorter.sort([4, 7, 3, 5, 9, 1, 67, 22])

    expected = [1, 3, 4, 5, 7, 9, 22, 67]
    assert_equal expected, sorter.sort([4, 7, 3, 5, 9, 1, 67, 22])
  end

  def test_array_of_numbers_with_zero
    sorter = BubbleSort.new
    sorter.sort([4, 7, 3, 0, 9])

    expected = [0, 3, 4, 7, 9]
    assert_equal expected, sorter.sort([4, 7, 3, 0, 9])
  end

  def test_array_of_numbers_with_negatives
    sorter = BubbleSort.new
    sorter.sort([4, 7, -2, 0, -4])

    expected = [-4, -2, 0, 4, 7]
    assert_equal expected, sorter.sort([4, 7, -2, 0, -4])
  end

  def test_array_of_numbers_with_duplicates
    sorter = BubbleSort.new
    sorter.sort([4, 7, -2, 0, -4, -4, 4])

    expected = [-4, -4, -2, 0, 4, 4, 7]
    assert_equal expected, sorter.sort([4, 7, -2, 0, -4, -4, 4])
  end

  def test_unexpected_strings
    sorter = BubbleSort.new
    sorter.sort(["world", "hello"])

    expected = ["hello", "world"]
    assert_equal expected, sorter.sort(["world", "hello"])
  end



end
