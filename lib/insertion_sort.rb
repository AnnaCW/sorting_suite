require "pry"

class InsertionSort
  attr_accessor :sorted_array
  attr_accessor :unsorted_element
  attr_accessor :unsorted_array

  def initialize
    @sorted_array=[]
    @unsorted_element
    @unsorted_array
  end

    #INSERT inserts BEFORE the element with the given index

  def sort(unsorted_array, i=0)
    unsorted_element = unsorted_array[0]
    @unsorted_array = unsorted_array
    ##NEED TO DEFINE I

    if unsorted_array.empty?
      return sorted_array

    elsif sorted_array.empty?
      move_element(i, unsorted_element, unsorted_array)
      sort(unsorted_array, i)

    elsif unsorted_element < sorted_array[i]
      move_element(i, unsorted_element)
      sort(unsorted_array, i)

    elsif unsorted_element > sorted_array[i]
      check_right(unsorted_element, i+=1)

    end
    return sorted_array
  end


  def move_element(i, unsorted_element, unsorted_array)
    sorted_array.insert(i, unsorted_element)
    unsorted_array.drop(1)
    # return sorted_array
  end


      #added 1 to i before passing to check right
  def check_right(unsorted_element, i)
      if sorted_array[i].nil
        move_element(i, unsorted_element)

      elsif unsorted_element < sorted_array[i]
        move_element(i, unsorted_element)

      elsif unsorted_element > sorted_array[i]
        check_right(unsorted_element, i+=1)
      end
  end


end
  #class


sorter = InsertionSort.new
p sorter.sort(["d", "b", "a", "e"])
