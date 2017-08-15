arr = ['10', '11', '9', '7', '8']

lowest = arr[0]
new_arr = arr.map(&:to_i)
sorted_arr = new_arr.sort

p sorted_arr
