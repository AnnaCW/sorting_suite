gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_initialize
    sorter = MergeSort.new

    assert_equal MergeSort, sorter.class
  end

  def test_sort_empty_array
    sorter = MergeSort.new
    sorter.sort([""])

    expected = [""]
    assert_equal expected, sorter.sort([""])
  end

  def test_sort_1_element_array
    sorter = MergeSort.new
    sorter.sort(["c"])

    expected = ["c"]
    assert_equal expected, sorter.sort(["c"])
  end

  def test_sort_3_element_array
    sorter = MergeSort.new
    sorter.sort(["c", "h", "a"])

    expected = ["a", "c", "h"]
    assert_equal expected, sorter.sort(["c", "h", "a"])
  end

  def test_sort_5_element_array
    sorter = MergeSort.new
    sorter.sort(["c", "h", "a", "q", "p"])

    expected = ["a", "c", "h", "p", "q"]
    assert_equal expected, sorter.sort(["c", "h", "a", "q", "p"])
  end

  def test_sort_numbers_array
    sorter = MergeSort.new
    sorter.sort([1, 55, -1, 6, 5])

    expected = [-1, 1, 5, 6, 55]
    assert_equal expected, sorter.sort([1, 55, -1, 6, 5])
  end

  def test_sort_array_with_duplicates
    sorter = MergeSort.new
    sorter.sort([1, 55, -1, 6, 5, 6, 1])

    expected = [-1, 1, 1, 5, 6, 6, 55]
    assert_equal expected, sorter.sort([1, 55, -1, 6, 5, 6, 1])
  end

  def test_sort_unexpected_input_strings
    sorter = MergeSort.new
    sorter.sort(["what", "is", "up"])

    expected = ["is", "up", "what"]
    assert_equal expected, sorter.sort(["what", "is", "up"])
  end

end
