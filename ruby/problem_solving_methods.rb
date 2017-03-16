=begin
define a method that takes in an array, and a number in that array
set index to 0 
loop through array using .each iterator
compare each value in array to the number given in the argument
if the value is not the number given in the argument, add 1 to index
if the value is the number given in the argument, break and return index
if index is greater than or equal to the array length, return nil   
=end

def search_array(arr, target_number)
index = 0

arr.each do |i| 
  if i == target_number
    return index
  elsif i != target_number
    index += 1
  end
end
  return nil
end

arr = [42, 89, 23, 1]
arr2 = [3, 6, 8, 10]
arr3 = [1, 2, 3, 4]

p search_array(arr, 1)
p search_array(arr2, 6)
p search_array(arr3, 633)


=begin
define a method that takes an integer which is the length of the fib sequence
create an array with the values [0, 1]
set index equal to 0
loop through array
-add value at current index, plus the value at index + 1, set it equal to value at index + 2
-add 1 to the index 

=end

def fib(length)
  array = [0, 1]
  index = 2
  while index < length
    array[index] = array[index - 1] + array[index - 2]
    index += 1
  end

  return array

end
  
p fib(6)
p fib(15)

p fib(100).last



=begin
define a method that takes in an array
loop through each index in the array
compare the number at the current index, with the rest of the numbers in the array
set the smallest number to a separate variable
delete that value in the original array
set the smallest number variable to the next index in the new array
=end

def sort(arr)
  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      if arr[i] > arr[j]
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp  
      end
      j += 1
    end
    i += 1
  end

  return arr 

end


p sort([5, 2, 8, 4, 9])
p sort([6, 5, 4, 3, 2, 1])
p sort([2, 4, 6, 8, 10])