class InsertionSort
  attr_reader :sorted

  def initialize
    @sorted = []
  end

    #INSERT inserts BEFORE the element with the given index

  def sort(unsorted)
    i = 0
    u = unsorted[0]

    if sorted.empty?
      sorted.insert(1, u)
      unsorted.delete(u)

    elsif u < sorted[0]
      sorted.insert(1, u)
      unsorted.delete(u)

    else
      # u > sorted[i]
      # keep checking to the right
      until u < sorted[i] || i == (sorted.length-1)
        i += 1
      end
      sorted.insert(i+1, u)
      unsorted.delete(u)

    end
    p unsorted
    p sorted
  end



end

#edge case - empty unsorted array - should return empty sorted

sorter = InsertionSort.new
sorter.sort(["d", "b", "a", "c"])
