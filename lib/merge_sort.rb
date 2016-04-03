class MergeSort

  def sort(arr, sorted_array=[])
    left_holding = []
    right_holding = []

    if arr.length <= 2
      sorted_array << arr

    else
      split_at = arr.length/2
      left = arr.take(split_at)
      right = arr - left

      split_left(left)
        left_holding = left

      split_right(right)
        right_holding = right

    end
    p left_holding
    p right_holding
    sorted_array
  end


  def split_left(left)
    if left.length < 3
      return left

    else
      split_at = left.length/2
      left = left.take(split_at)
      # left_right = left - left_left
      split_left(left)
    end
  end

    def split_right(right)
      if right.length < 3
        return right

      else
        split_at = right.length/2
        left_right = right.take(split_at)
        right = right - left_right
        # split_right(right)
      end
    end

end


sorter = MergeSort.new
sorter.sort([6, 5, 3, 7, 2])
