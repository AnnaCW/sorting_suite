# class MergeSort
#
#   def sort(arr, sorted_array=[])
#     left_holding = []
#     right_holding = []
#
#     if arr.length < 2
#       sorted_array = arr
#       return sorted_array
#
#     else
#       split_at = arr.length/2
#       left = arr.take(split_at)
#       right = arr - left
#
#       split_left(left)
#         left_holding = left
#
#       split_right(right)
#         right_holding = right
#
#       left_sorted = sort_left(left_holding)
#       right_sorted = sort_right(right_holding)
#
#       merge(left_sorted, right_sorted, sorted_array)
#
#     end
#     sorted_array
#   end
#
#   def split_left(left)
#     if left.length < 3
#       return left
#
#     else
#       split_at = left.length/2
#       left = left.take(split_at)
#       split_left(left)
#     end
#   end
#
#   def sort_left(left_holding)
#     if left_holding.length == 1 || left_holding[0] < left_holding[1]
#       left_sorted = left_holding
#     else
#       left_sorted = left_holding[1], left_holding[0]
#     end
#     left_sorted
#   end
#
#   def sort_right(right_holding)
#     if right_holding.length == 1 || right_holding[0] < right_holding[1]
#       right_sorted = right_holding
#     else
#       right_sorted = right_holding[1], right_holding[0]
#     end
#     right_sorted
#   end
#
#
#   def merge(left_sorted,right_sorted,sorted_array)
#      if left_sorted.empty? && right_sorted.empty?
#        return sorted_array
#
#      elsif right_sorted.empty?
#        sorted_array << left_sorted[0]
#        return sorted_array
#
#      elsif left_sorted.empty?
#        sorted_array << right_sorted[0]
#        return sorted_array
#
#      elsif left_sorted[0] < right_sorted[0]
#        sorted_array << left_sorted[0]
#        left_sorted.delete_at(0)
#        merge(left_sorted, right_sorted, sorted_array)
#
#      elsif right_sorted[0] < left_sorted[0]
#        sorted_array << right_sorted[0]
#        right_sorted.delete_at(0)
#        merge(left_sorted, right_sorted, sorted_array)
#      end
#   sorted_array
#   end
#
#
#     def split_right(right)
#       if right.length < 3
#         return right
#
#       else
#         split_at = right.length/2
#         left_right = right.take(split_at)
#         right = right - left_right
#         # split_right(right)
#       end
#     end
#
# end
#


class MergeSort

  def sort(arr, sorted_array=[])
    if arr.length < 2
      sorted_array = arr
      return sorted_array
    else
      split_at = arr.length/2
      left = arr.take(split_at)
      right = arr - left

      left_sorted=split_and_merge_left(left)
    end
    sorted_array
  end

  def split_and_merge_left(left)
    if left.length > 1
      split_at = left.length/2
      former_left = left
      left = former_left.take(split_at)
      left_right = former_left - left
      split_and_merge_left(left)
    else
      left_sorted = merge_left(left, left_right)
    end
    left_sorted
  end


  def merge_left(left, left_right, left_sorted=[])
     if left.empty? && left_right.empty?
       return left_sorted

     elsif left_right.empty?
       left_sorted << left[0]
       return left_sorted

     elsif left.empty?
       left_sorted << left_right[0]
       return left_sorted

     elsif left[0] < left_right[0]
       left_sorted << left[0]
       left.delete_at(0)
       merge_left(left, left_right, left_sorted)

     elsif left_right[0] < left[0]
       left_sorted << left_right[0]
       left_right.delete_at(0)
       merge_left(left, left_right, left_sorted)
     end
  end

    # def split_right(right)
    #   if right.length < 3
    #     return right
    #
    #   else
    #     split_at = right.length/2
    #     left_right = right.take(split_at)
    #     right = right - left_right
    #     # split_right(right)
    #   end
    # end

end


sorter = MergeSort.new
sorter.sort([6, 5, 3, 7, 9])
