# frozen_string_literal: true

def test_file
  puts 'hello world'
end

def bubble_sort(array)
#   check if array is larger than a size of 1
  array_length = array.size
  return array if array_length <= 1

#   bubble sort
  loop do
    swapped = false

    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
