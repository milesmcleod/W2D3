def my_uniq(array)
  return_array = []
  array.each do |el|
    return_array << el unless return_array.include?(el)
  end
  return_array
end

def two_sum(array)
  new_array = []
  i = 0
  while i < array.length - 1
    i2 = i + 1
    while i2 < array.length
      new_array << [i, i2] if array[i] + array[i2] == 0
      i2 += 1
    end
    i += 1
  end
  new_array

end

def my_transpose(array)
  new_array = Array.new(array.length) { Array.new(array.length) { nil } }
  row_i = 0
  while row_i < array.length
    column_i = 0
    while column_i < array[row_i].length
      new_array[row_i][column_i] = array[column_i][row_i]
      column_i += 1
    end
    row_i += 1
  end
  new_array
end

def stock_picker(array)
  pair = []
  biggest_diff = 0
  i = 0
  while i < array.length-1
    i2 = i+1
    while i2 < array.length
      if array[i2] - array[i] >= biggest_diff
        pair = [i, i2]
        biggest_diff = array[i2] - array[i]
      end
      i2 += 1
    end
    i += 1
  end
  pair
end
