# I used a lot of comments in this to help myself along
# Recursion was something else as far as wrapping my head around it
# I didn't delete any of them as I may want to go back to them
# as well as just incase someone comes across this and needs help
# wrapping their head around it like I did

# create unsorted array to be used for merge_sort
unsorted_array = []
51.times { unsorted_array << rand(100) } 
# did 51 times to make sure my split worked for odd length arrays

# Merge_Sort - Recursion takes place here
def merge_sort(arr)
  return arr if arr.length < 2 # Not needed for this code. Just In Case though.
  mid_of_array = arr.length / 2 # Grab the mid way point of an array (does work with odd #'s)
  # Merge Recurision using the merge method. range operators with mid_of_array to split
  merge(merge_sort(arr[0...mid_of_array]), merge_sort(arr[mid_of_array..-1])) # DIVIDE
end

# Merge left/right
def merge(mergeleft, mergeright) # CONQUER
  # need to init an empty array to push into
  completed_sort = []
  # while/until the args are shredded down to zero to stop the recursion
  while mergeleft.length != 0 && mergeright.length != 0 do # until would probably look cleaner
    if mergeleft.first.to_i <= mergeright.first.to_i # had to add to_i here
      completed_sort << mergeleft.shift
    else
      completed_sort << mergeright.shift
    end
  end
  completed_sort + mergeleft + mergeright # COMBINE
end

p merge_sort(unsorted_array)

# TEST
# unsorted_array # =>[48, 85, 63, 19, 44, 28, 72, 98, 43, 45, 42, 59, 82, 12, 
#                     47, 73, 75, 38, 63, 68, 60, 42, 76, 81, 35, 59, 58, 55, 
#                     69, 26, 89, 86, 87, 55, 97, 27, 87, 19, 31, 4, 87, 56, 
#                     83, 10, 43, 35, 4, 20, 76, 18, 3]
#
# merge_sort(unsorted_array) # => [3, 4, 4, 10, 12, 18, 19, 19, 20, 26, 27, 
#                                  28, 31, 35, 35, 38, 42, 42, 43, 43, 44, 45, 
#                                  47, 48, 55, 55, 56, 58, 59, 59, 60, 63, 63, 
#                                  68, 69, 72, 73, 75, 76, 76, 81, 82, 83, 85, 
#                                  86, 87, 87, 87, 89, 97, 98]
