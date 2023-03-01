# frozen_string_literal: true

# @param array [Array<Integer>]
def bubble_sort(array)

  array.each_index do |i|
    # puts(array[i], i)
    (array.size - i - 1).times do |j|
      next unless array[j] > array[j + 1]

      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
    end
  end

  array
end

# @param array [Array<Integer>]
def optimized_bubble_sort(array)
  array.each_index do |i|
    swapped = false
    # puts(array[i], i)
    (array.size - i - 1).times do |j|
      next unless array[j] > array[j + 1]

      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
      swapped = true
    end

    break unless swapped

  end

  array
end

# @param array [Array<Integer>]
def print_array(array)
  array.each { |elem| puts elem }
end

def testing
  array = [64, 34, 25, 12, 22, 11, 90]
  print_array(bubble_sort(array))
  p "\n"
  array = [64, 34, 25, 12, 22, 11, 90]
  print_array(optimized_bubble_sort(array))
end

testing
