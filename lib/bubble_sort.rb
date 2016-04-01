class BubbleSort

  def sort(arr)
    x = arr.length-1

    loop do
      clean_pass=true
      for i in 1 .. x do
        if arr[i] < arr[i-1]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          clean_pass=false
        end
      end
      x -=1
      if clean_pass==true
        break
      end
    end
    p arr
  end

end


sorter = BubbleSort.new
sorter.sort([3, 4, 9, 1, 6])

# => #<BubbleSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
