class BubbleSort

  def sort(arr)
    x = arr.length-1

    loop do
      clean_pass = true
      for i in 1..x do
        if arr[i] <= arr[i-1]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          clean_pass = false
        end
      end
      x -= 1
      break if clean_pass
    end
    arr
  end
end
