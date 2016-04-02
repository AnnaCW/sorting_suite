
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

  def test_sort_works_for_1_element
    sorter = InsertionSort.new
    sorter.sort(["c"])

    expected = ["c"]
    assert_equal expected, sorter.sort(["c"])
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


end
