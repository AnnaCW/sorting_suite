class InsertionSort

  def sort(unsorted_array, sorted_array=[], index=0)

    unsorted_array.each do |unsorted_element|
      index = 0

      if unsorted_array.empty?
        return sorted_array

      elsif sorted_array.empty?
        move_element(sorted_array, index, unsorted_element, unsorted_array)

      elsif unsorted_element < sorted_array[index]
        move_element(sorted_array, index, unsorted_element, unsorted_array)

      elsif unsorted_element > sorted_array[index]
        check_right(unsorted_element, sorted_array, index+=1, unsorted_array)
      end

    end
    sorted_array
  end


  def check_right(unsorted_element, sorted_array, index, unsorted_array)
    if sorted_array[index].nil?
        move_element(sorted_array, index, unsorted_element, unsorted_array)

    elsif unsorted_element < sorted_array[index]
        move_element(sorted_array, index, unsorted_element, unsorted_array)

    elsif unsorted_element > sorted_array[index]
        check_right(unsorted_element, sorted_array, index+=1, unsorted_array)
    end
    sorted_array
  end

  def move_element(sorted_array, index, unsorted_element, unsorted_array)
    sorted_array.insert(index, unsorted_element)
    # unsorted_array.drop(1)
  end

end

sorter = InsertionSort.new
p sorter.sort(["d", "b", "a", "e"])
