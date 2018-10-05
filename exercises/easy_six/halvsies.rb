# Input: Array as an argument
# Output: Returns two arrays that contain the first half and second half of the original
# If the number of elements is odd, the middle element should go to the first half

def halvsies(array)
  halves = []

  if array.length % 2 == 1
    end_index  = array.length / 2
    second_half = array.slice!(0..end_index)
  else
    end_index = (array.length / 2) - 1
    second_half = array.slice!(0..end_index)
  end
    first_half = array
    halves << second_half
    halves << first_half
end

# Another way to find out if the number of elements is not even
# is to check if the length of the array is even
# even == odd number
# odd == even number

p halvsies([1, 5, 2, 4, 6])