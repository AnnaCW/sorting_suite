require "pry"

class InsertionSort
  # attr_accessor :sorted_array
  # attr_accessor :unsorted_element
  # attr_accessor :unsorted_array

  # def initialize
  #   # @sorted_array=[]
  #   @unsorted_element
  #   @unsorted_array
  # end

    #INSERT inserts BEFORE the element with the given index

  def sort(unsorted_array, sorted_array=[], index=0)
    # unsorted_element = unsorted_array[0]

    unsorted_array.each do |unsorted_element|
      index = 0

    if unsorted_array.empty?
      return sorted_array

    elsif sorted_array.empty?

      sorted_array.insert(index=0, unsorted_element)
      unsorted_array.drop(1)

      # sort(unsorted_array, sorted_array, index)
        #PROCEED TO NEXT UNSORTED ELEMENT
        #INDEX DOESN'T CHANGE

    elsif unsorted_element < sorted_array[index]

      sorted_array.insert(index, unsorted_element)
      unsorted_array.drop(1)

      # sort(unsorted_array, sorted_array, index)
        #PROCEED TO NEXT UNSORTED ELEMENT
        #INDEX DOESN'T CHANGE

    elsif unsorted_element > sorted_array[index]
      check_right(unsorted_element, sorted_array, index+=1, unsorted_array)

      # sort(unsorted_array, sorted_array, index)

    end
    #end if/else
  end
    #end for each

  sorted_array
  end

      #added 1 to i before passing to check right
  def check_right(unsorted_element, sorted_array, index, unsorted_array)

      if sorted_array[index].nil?

        sorted_array.insert(index, unsorted_element)
        unsorted_array.drop(1)

      elsif unsorted_element < sorted_array[index]

        sorted_array.insert(index, unsorted_element)
        unsorted_array.drop(1)

      elsif unsorted_element > sorted_array[index]
        check_right(unsorted_element, sorted_array, index+=1, unsorted_array)
      end

    sorted_array
  end

  # def move_element(i, unsorted_element, unsorted_array)
  #   sorted_array.insert(i, unsorted_element)
  #   unsorted_array.drop(1)
  #   return sorted_array
  # end

end
  #class


sorter = InsertionSort.new
p sorter.sort(["d", "b", "a", "e"])
