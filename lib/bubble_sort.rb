def bubble_sort(array)
  has_swapped = false
  sorted_array = []

  loop do
    puts "***** START LOOP *****"
    working_array = []

    if sorted_array == []
      sorted_array = array
    end

    while sorted_array.length > 0 do
      # sort working_array into sorted_array
      puts "==== START WHILE ===="
      puts "working_array is"
      print working_array
      puts " "
      puts "sorted_array is"
      print sorted_array
      puts " "
      puts "-----"
      if working_array == []
        puts "working array is empty"
        working_array.push(sorted_array.shift)
      elsif sorted_array == []
      elsif sorted_array[0] < working_array[(working_array.length - 1)]
        puts "sorted_array[0] = #{sorted_array[0]}"
        puts "working_array[(working_array.length - 1)] = #{working_array[(working_array.length - 1)]}"
        working_array.insert((working_array.length - 1), sorted_array.shift)
        puts "working array is now"
        print working_array
        puts " "
        has_swapped = true
      else
        puts "else!"
        working_array.push(sorted_array.shift)
        puts "working array is now"
        print working_array
        puts " "
      end
      puts "===== END WHILE ====="
    end
    sorted_array = working_array
    puts "*** before break"
    break if has_swapped == false

    if has_swapped == true
      puts "has_swapped = #{has_swapped}"
      has_swapped = false
    end
    puts "***** END LOOP *****"
    
  end #end of loop

  return sorted_array
end

# make copied_sorted_array
# make temp_array
# push first item to temp_array
# unshift from copied_sorted_
# look at first item in copied_sorted_array
# if last item in temp_array is greater than, insert it before