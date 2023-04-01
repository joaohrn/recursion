require 'pry-byebug'

def merge(arr1, arr2)
  new_array = []
  until arr1.empty? && arr2.empty?
    if arr1.empty?
      new_array << arr2.shift
    elsif arr2.empty?
      new_array << arr1.shift
    else
      arr1[0] <= arr2[0] ? new_array << arr1.shift : new_array << arr2.shift
    end
  end
  new_array
end

def merge_sort(array)
  if array.size < 2
    array
  else
    middle = (array.size / 2).floor
    left = array[0..(middle - 1)]
    right = array[middle..]
    merge(merge_sort(left), merge_sort(right))
  end
end
