=begin
# ------------------- Problem ---------------------
return the values of the hash 

# ------------------- Examples --------------------
they are already there 
but there are some with just two names and there are some with just one name
# ------------------- Data ------------------------
I will use an array for this one 

# ------------------- Algorithm -------------------
take the array and then map it so that jsut hte names remain 

# ------------------- Code -----------------------

=end
def list arr
  names = arr.map {|hsh| hsh[:name]}
  names.map do |name| 
    if name == names[-2]
      name + ' & '
    elsif name != names[-1]
      name  + ', '
    else 
      name 
    end
  end.join
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) == 'Bart, Lisa & Maggie'

p list([ {name: 'Bart'}, {name: 'Lisa'} ]) == 'Bart & Lisa'

p list([ {name: 'Bart'} ]) == 'Bart'

p list([]) == ''