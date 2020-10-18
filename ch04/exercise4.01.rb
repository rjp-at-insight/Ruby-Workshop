#   AUTHOR      : Robert James Patterson
#   DATE        : 10/18/2020
#   FILE        : comparing.rb
#   SYNOPSIS    : using methods in Ruby.

def calculate_median(array)
    array = array.sort

    if array.length.odd?
        array[(array.length - 1) / 2]
    else array.length.even?
        (array[array.length/2] + array[array.length/2 - 1])/2.to_f
    end
end

def array_stats(input_array)
    sum = input_array.inject(0){|total, i| total + i}
    median = calculate_median(input_array)
    mean = sum/input_array.length
    return sum, median, mean
end

# Main
array_stats([1,2,3])
stats = array_stats([500, 12, 1, 99, 55, 12, 12])
sum, median, mean = array_stats([500, 12, 1, 99, 55, 12, 12])