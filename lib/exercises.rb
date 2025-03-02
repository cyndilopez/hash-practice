

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: ?
# Space Complexity: ?

def grouped_anagrams(strings)
  return [] if strings.empty?
  n = strings.length - 1
  array_store_anagrams = [[strings[0]]]
  i = 1
  while i <= n
    matched = false
    array_store_anagrams.length.times do |j|
      array = array_store_anagrams[j]
      if array[0].split("").sort.join == strings[i].split("").sort.join
        array_store_anagrams[j] << strings[i]
        matched = true
        break
      else
        matched = false
      end
    end
    if matched == false
      new_array = [strings[i]]
      array_store_anagrams << new_array
    end
    i += 1
  end
  return array_store_anagrams
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
