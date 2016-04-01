require "minitest/autorun"
require "minitest/pride"
require_relative "lib/insertion_sort"

class InsertionSortTest < Minitest::Test

  def test_initialize
    sorter = InsertionSort.new

    assert_equal InsertionSort, sorter.class
  end


  def test_initialize_creates_empty_sorted_array
    sorter = InsertionSort.new

    assert_equal nil, sorted
  end


  def test_unsorted_array_contains_expected_values
    sorter = InsertionSort.new
    sorter.sort(["d", "b", "a", "c"])

    expected = ["d", "b", "a", "c"]
    assert_equal expected, unsorted
  end

  def test_if_empty_conditional_works
    sorter = InsertionSort.new
    sorter.sort(["c"])

    expected = ["c"]
    assert_equal expected, sorted
  end

end
