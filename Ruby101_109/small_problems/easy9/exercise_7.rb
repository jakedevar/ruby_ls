# exercise_7.rb

# def swap_name(name)
#   name << ','
#   name.split.reverse.join' '
# end

# LS
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
