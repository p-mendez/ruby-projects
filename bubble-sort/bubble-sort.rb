def bubble_sort(ary)
  list = []
  list.replace(ary)   #copy array

  (list.size - 1).downto(0) do |stop_index|
    list.each_with_index do |element, current_index|
      break if current_index == stop_index

      if element > list[current_index + 1]
        list[current_index] = list[current_index + 1]
        list[current_index + 1]= element
      end
    end
  end

  list
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# Should return [0, 2, 2, 3, 4, 78]
