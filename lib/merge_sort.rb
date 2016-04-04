class MergeSort

  def sort(arr)
    if arr.length < 2
      return arr
    else
      x = arr.length
      mid = x/2

      left = arr.slice(0...mid)
      right = arr.slice(mid..x-1)

      left_sorted = sort(left)
      right_sorted = sort(right)
    end

    merge(left_sorted, right_sorted)
  end

  def merge(left_sorted, right_sorted)
    sorted_array=[]

    loop do
      if left_sorted.empty? && right_sorted.empty?
        break

      elsif right_sorted.empty?
        # ruby: shift --> removes the first element
        sorted_array << left_sorted.shift
        # left_sorted.delete_at(0)

      elsif left_sorted.empty?
        sorted_array << right_sorted[0]
        right_sorted.delete_at(0)

      elsif left_sorted[0] <= right_sorted[0]
        sorted_array << left_sorted[0]
        left_sorted.delete_at(0)

      elsif right_sorted[0] <= left_sorted[0]
        sorted_array << right_sorted[0]
        right_sorted.delete_at(0)
      end
    end
    sorted_array
  end
end
