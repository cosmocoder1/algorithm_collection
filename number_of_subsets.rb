#for a given array, find the number of subsets that total the specified value
#clarifying questions - the array is sorted, no repeats or negative numbers


def find_subsets(arr, target_value)
  rec(arr, target_value, arr.length - 1)
end

def rec(arr, target_value, i)

  #base cases
  if target_value == 0
    1
  elsif target_value < 0
    0
  elsif i < 0
    0
  elsif 
    target_value < arr[i]
    rec(arr, target_value, i - 1)
  else  
    rec(arr, target_value - arr[i], i - 1) + rec(arr, target_value, i - 1) 
  end
end

arr = [2, 4, 6, 10, 20]

puts find_subsets(arr, 10)

