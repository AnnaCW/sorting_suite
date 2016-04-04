#VERSION 1 - WORKS FOR 4 ELEMENTS
class MergeSort

  def sort(arr)

    if arr.length < 2
      return arr

    else
      x = arr.length
      mid = x/2
      # .to_f.ceil

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
        sorted_array << left_sorted[0]
        left_sorted.delete_at(0)

      elsif left_sorted.empty?
        sorted_array << right_sorted[0]
        right_sorted.delete_at(0)

      elsif left_sorted[0] < right_sorted[0]
        sorted_array << left_sorted[0]
        left_sorted.delete_at(0)

      elsif right_sorted[0] < left_sorted[0]
        sorted_array << right_sorted[0]
        right_sorted.delete_at(0)
      end
    end
    sorted_array
  end
end

sorter = MergeSort.new
p sorter.sort([6, 5, 4, 3, 7, 9, 77, 66, 1, 0, 99, 64, 23])
    #

    # if left_sorted.empty? && right_sorted.empty?
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

    #
    #   split_left(left)
    #     left_holding = left
    #
    #   split_right(right)
    #     right_holding = right
    #
    #   left_sorted = sort_left(left_holding)
    #   right_sorted = sort_right(right_holding)
    #
    #   merge(left_sorted, right_sorted, sorted_array)



#   def split_left(left)
#     if left.length < 2
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
#       if right.length < 2
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
#************

#VERSION 2 - NOT FINISHED - TRYING TO NEST MERGE IN SORT
# class MergeSort
#
#   def sort(arr, sorted_array=[])
#     if arr.length < 2
#       sorted_array = arr
#       return sorted_array
#     else
#       split_at = arr.length/2
#       left = arr.take(split_at)
#       right = arr - left
#
#       left_sorted=split_and_merge_left(left)
#     end
#     sorted_array
#   end
#
#   def split_and_merge_left(left)
#     if left.length > 1
#       split_at = left.length/2
#       former_left = left
#       left = former_left.take(split_at)
#       left_right = former_left - left
#       split_and_merge_left(left)
#     else
#       left_sorted = merge_left(left, left_right)
#     end
#     left_sorted
#   end
#
#
#   def merge_left(left, l=0, left_right, r=0, left_sorted=[])
#      if left.empty? && left_right.empty?
#        return left_sorted
#
#      elsif left_right.empty?
#        left_sorted << left[l]
#        return left_sorted
#
#      elsif left.empty?
#        left_sorted << left_right[r]
#        return left_sorted
#
#      elsif left[l] < left_right[r]
#        left_sorted << left[l]
#        left.delete_at(l)
#        merge_left(left, l, left_right, r, left_sorted)
#
#      elsif left_right[r] < left[l]
#        left_sorted << left_right[r]
#        left_right.delete_at(r)
#        merge_left(left, l, left_right, r, left_sorted)
#      end
#   end
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
# end
#****************

#VERSION 3 -
# class MergeSort
#
#   def sort(arr)
#
#     if arr.length < 2
#       sorted_array = arr
#       return sorted_array
#     else
#       split(arr)
#     end
#   end
#
#   def split(arr)
#     first = arr[0]
#     last = [arr.length-1]
#     mid = arr.length/2
#
#     p left = arr.take(mid)
#     right = arr - left
#
#     p left_split(left)
#   end
#
#     def left_split(left)
#     first = left[0]
#     last = left.length-1
#     mid = left.length/2
#     if left.length > 1
#
#     p left = left.slice(first..mid)
#     left_split(left)
#     else
#       return left
#     end
#   end
#
# end

  #   def split_left(left, holding_left=[])
  #     first = left[0]
  #     last = [left.length-1]
  #     mid = left.length/2
  #
  #     if left.length > 1
  #     former_left = left
  #     left = former_left.take(mid)
  #     left_right = former_left - left
  #     holding_left << left
  #     holding_left << left_right
  #     split_left(left)
  #   else
  #     return
  #     holding_left
  #   end
  # end
  #     # if left.length > 1
      # split_at = left.length/2
      # former_left = left
      # left = former_left.take(split_at)
      # left_right = former_left - left
#       split_left(left, holding_left)
#       split_right(right,holding_right)
#
#       # split_right(left_right, holding_left)
#       else
#       return left
#       end
#     end
# end
#     #
    #
    #     holding_left << left
    #


#   def split_left(left, left_right=[], holding_left=[])
#     if left.length > 1
#     split_at = left.length/2
#     former_left = left
#     left = former_left.take(split_at)
#     left_right = former_left - left
#
#     holding_left << left
#     holding_left << left_right
#     else
#       holding_left << left
#   end
#   holding_left
# end



  # def merge_left(left_holding, sorted_left=[]
  #   l = 0
  #   left_holding.each do |x|



  #   if left_holding.length == 1 || left_holding[0] < left_holding[1]
  #     left_sorted = left_holding
  #   else
  #     left_sorted = left_holding[1], left_holding[0]
  #   end
  #   left_sorted
  # end

  # def sort_right(right_holding)
  #   if right_holding.length == 1 || right_holding[0] < right_holding[1]
  #     right_sorted = right_holding
  #   else
  #     right_sorted = right_holding[1], right_holding[0]
  #   end
  #   right_sorted
  # end
  #

  # def merge(left_sorted,right_sorted,sorted_array)
  #    if left_sorted.empty? && right_sorted.empty?
  #      return sorted_array
  #
  #    elsif right_sorted.empty?
  #      sorted_array << left_sorted[0]
  #      return sorted_array
  #
  #    elsif left_sorted.empty?
  #      sorted_array << right_sorted[0]
  #      return sorted_array
  #
  #    elsif left_sorted[0] < right_sorted[0]
  #      sorted_array << left_sorted[0]
  #      left_sorted.delete_at(0)
  #      merge(left_sorted, right_sorted, sorted_array)
  #
  #    elsif right_sorted[0] < left_sorted[0]
  #      sorted_array << right_sorted[0]
  #      right_sorted.delete_at(0)
  #      merge(left_sorted, right_sorted, sorted_array)
  #    end
  # sorted_array
  # end

#VERSION 4 ###########

# class MergeSort


#   def sort(arr, working_arr=arr, working_arr_2=[])
#
#   x = (working_arr.length)
#   mid = x/2.to_f.ceil
#
#     if working_arr.length < 2
#       working_arr
#     else
#     working_arr = working_arr.slice(0...mid), working_arr.slice(mid..x)
#       working_arr[0] = sort(working_arr[0])
#       working_arr[1] = sort(working_arr[1])
#
#     end
#   p working_arr
#
#   end
# end

# class MergeSort
#
# def sort(arr)
#
#   x = arr.length
#   m = x/2.to_f.ceil
#
#   if x < 1
#     return arr
#
#   else
#   p left = arr.slice(0...m)
#   p right = arr.slice(m..x)
#
#   # left_sorted = split_left(left)
#   # right_sorted = split_right(right)
#   end
#     # sorted_array = merge(left_sorted, right_sorted)
# end

  # def split_left(left)
  #   if left.length < 2
  #     return left
  #   else
  #     x = left.length
  #     m = x/2.to_f.ceil
  #     left = left.slice(0...m)
  #     split_left(left)
  #   end
  #   left
  # end
  #
  # def split_right(right)
  #   if right.length < 2
  #     return right
  #   else
  #     x = right.length
  #     m = x/2.to_f.ceil
  #    right = right.slice(m..x)
  #     split_right(right)
  #   end
  #    p right
  # end


# def merge(left_sorted, right_sorted)
#   sorted_array = []
#     l = 0
#     r = 0
#
#     loop do
#       if r >= right_sorted.length && l >= left_sorted.length
#         break
#
#       elsif r >= right_sorted.length or (l < left_sorted.length && left_sorted[l] < right_sorted[r])
#         sorted_array << left_sorted[l]
#         l += 1
#       else
#         sorted_array << right_sorted[r]
#         r += 1
#       end
#     end
#     return sorted_array
#   end

# end



  # def merge(working_arr)
  #   return working_arr[0]
  # end

#   def sort(arr)
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
#         p left_holding = left
#
#       split_right(right)
#         p right_holding = right
#
#     p  left_sorted = sort_left(left_holding)
#     p  right_sorted = sort_right(right_holding)
#
#       merge(left_sorted, right_sorted, sorted_array)
#
#     end
#     sorted_array
#   end
#
#   def split_left(left, left_holding=[])
#
#     if left.length < 3
#       return left_holding
#
#     else
#       split_at = left.length/2
#       left = left.take(split_at)
#       split_left(left)
#
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
#         split_right(right)
#       end
#     end
#
# end

# VERSION 5
# class MergeSort
#
#   def sort(arr)
#
#   x = arr.length
#   m = x/2.to_f.ceil
#     if x < 2
#     return arr
#
#     else
#     p left = arr.slice(0...m)
#     p right = arr.slice(m..x)
#     end
#   # i = 0
#   # k = 1
#   end
#
#   def split_left(left)
#     if left.length < 2
#       return left
#     else
#       left = left.slice(0)
#     end
#   end
# end
  # while i <= n - 2 && k <= n - 1
  # if left[i] < left[k]
  #   holding_left << [left[i], left[k]]
  # end
  # end

  #
  #split_left(arr)
  #
  #   # p left = arr.slice(0...m)
  #   # p right = arr.slice(m..x)
  #   #
  #   # p split_left(left)
  #   #   left_holding = left
  #
  #     # split_right(right)
  #     #   right_holding = right
  #
  #     # left_sorted = sort_left(left_holding)
  #     # right_sorted = sort_right(right_holding)
  #     #
  #     # merge(left_sorted, right_sorted, sorted_array)
  #
  #   end
  #   # sorted_array
  # end




  # def sort_left(left_holding)
  #   if left_holding.length == 1 || left_holding[0] < left_holding[1]
  #     left_sorted = left_holding
  #   else
  #     left_sorted = left_holding[1], left_holding[0]
  #   end
  #   left_sorted
  # end
  #
  # def sort_right(right_holding)
  #   if right_holding.length == 1 || right_holding[0] < right_holding[1]
  #     right_sorted = right_holding
  #   else
  #     right_sorted = right_holding[1], right_holding[0]
  #   end
  #   right_sorted
  # end
  #
  #
  # def merge(left_sorted,right_sorted,sorted_array)
  #    if left_sorted.empty? && right_sorted.empty?
  #      return sorted_array
  #
  #    elsif right_sorted.empty?
  #      sorted_array << left_sorted[0]
  #      return sorted_array
  #
  #    elsif left_sorted.empty?
  #      sorted_array << right_sorted[0]
  #      return sorted_array
  #
  #    elsif left_sorted[0] < right_sorted[0]
  #      sorted_array << left_sorted[0]
  #      left_sorted.delete_at(0)
  #      merge(left_sorted, right_sorted, sorted_array)
  #
  #    elsif right_sorted[0] < left_sorted[0]
  #      sorted_array << right_sorted[0]
  #      right_sorted.delete_at(0)
  #      merge(left_sorted, right_sorted, sorted_array)
  #    end
  # sorted_array
  # end


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
