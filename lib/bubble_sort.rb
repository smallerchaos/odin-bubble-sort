def bubble_sort(array)
  has_swapped = false
  sorted_array = []

  loop do
    working_array = []

    if sorted_array == []
      sorted_array = array
    end

    while sorted_array.length > 0 do

      if working_array == []
        # If working_array is empty, direcly add the first item of sorted_array into working_array
        working_array.push(sorted_array.shift)
      elsif sorted_array[0] < working_array[(working_array.length - 1)]
        # If the last item of working_array is larger than first item in sorted_array, swap to second last position when adding it to working_array
        working_array.insert((working_array.length - 1), sorted_array.shift)
        has_swapped = true
      else
        # Else the items are in the correct order so shift it directly into working_array
        working_array.push(sorted_array.shift)
      end
    end

    # Assign working_array to sorted_array now that it's done with one pass and before working_array is reset.
    sorted_array = working_array

    break if has_swapped == false

    if has_swapped == true
      # If items have been swapped, reset the has_swapped flag to false before running the loop again
      has_swapped = false
    end
    
  end #end of loop

  return sorted_array
end

# make copied_sorted_array
# make temp_array
# push first item to temp_array
# unshift from copied_sorted_
# look at first item in copied_sorted_array
# if last item in temp_array is greater than, insert it before