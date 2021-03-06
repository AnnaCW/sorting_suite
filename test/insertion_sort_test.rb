
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_initialize
    sorter = InsertionSort.new

    assert_equal InsertionSort, sorter.class
  end

  def test_sort_empty_array
    sorter = InsertionSort.new
    sorter.sort([""])

    expected = [""]
    assert_equal expected, sorter.sort([""])
  end

  def test_sort_1_element
    sorter = InsertionSort.new
    sorter.sort(["c"])

    expected = ["c"]
    assert_equal expected, sorter.sort(["c"])
  end

  def test_sort_2_elements
    sorter = InsertionSort.new
    sorter.sort(["h", "c"])

    expected = ["c", "h"]
    assert_equal expected, sorter.sort(["h","c"])
  end

  def test_sort_3_elements
    sorter = InsertionSort.new
    sorter.sort(["h", "c", "m"])

    expected = ["c", "h", "m"]
    assert_equal expected, sorter.sort(["h","c", "m"])
  end

  def test_sort_4_elements
    sorter = InsertionSort.new
    sorter.sort(["h", "c", "m", "f"])

    expected = ["c", "f", "h", "m"]
    assert_equal expected, sorter.sort(["h", "c", "m", "f"])
  end

  def test_sort_large_array_of_numbers
    sorter = InsertionSort.new
    sorter.sort([4, 7, 3, 5, 9, 1, 67, 22])

    expected = [1, 3, 4, 5, 7, 9, 22, 67]
    assert_equal expected, sorter.sort([4, 7, 3, 5, 9, 1, 67, 22])
  end

  def test_sort_array_of_numbers_with_zero
    sorter = InsertionSort.new
    sorter.sort([4, 7, 3, 0, 9])

    expected = [0, 3, 4, 7, 9]
    assert_equal expected, sorter.sort([4, 7, 3, 0, 9])
  end

  def test_sort_array_of_numbers_with_negatives
    sorter = InsertionSort.new
    sorter.sort([4, 7, -2, 0, -4])

    expected = [-4, -2, 0, 4, 7]
    assert_equal expected, sorter.sort([4, 7, -2, 0, -4])
  end

  def test_sort_array_with_duplicates
    sorter = InsertionSort.new
    sorter.sort([4, 7, 4, 0, 7])

    expected = [0, 4, 4, 7, 7]
    assert_equal expected, sorter.sort([4, 7, 4, 0, 7])
  end


end
