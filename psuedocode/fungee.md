```rb
size_one = 3
size_two = 3

new Array(size_one, Array(size_two, :blank)) 
# =>
# [[:blank],[:blank],[:blank]],
# [[:blank],[:blank],[:blank]],
# [[:blank],[:blank],[:blank]]
