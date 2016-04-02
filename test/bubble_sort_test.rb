gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_initialize
    sorter = BubbleSort.new

    assert_equal BubbleSort, sorter.class
  end
