# pseudo code
#base case
# if array.length == 1
#   merge/ return array
# else
#   sort left half of the array
#   sort right half of the array
#   merge the 2 halves

# define new_array = []
# when a and b.length == 1 start merging
# compare a[0] and b[0] whichever is smaller add to new_array
# continue comparing a[0] and b[0] until both arrays are empty
# end


def merge_sort(array)
  # base case
  return array if array.length < 2

  middle = array.length/2

  left_half = array[0...middle]
  right_half = array[middle..-1]

  # sort the sides
  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    if left.first <= right.first
      merged <<left.shift
    else
      merged << right.shift
    end
  end

  merged + left + right

end

test = [3, 2, 1, 13, 8, 5, 0, 1]
pink = [105, 79, 100, 110]
print merge_sort(test)




