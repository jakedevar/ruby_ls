if false
  greeting = "hello world"
end

greeting

# if statements do not indicate a new block so the greeting
# var is accessible in the outside 
=begin 
LS greeting is nil here, and no "undefined method or 
local variable" exception is thrown. Typically, when you 
reference an uninitialized variable, Ruby will raise an 
exception, stating that it’s undefined. However, when you 
initialize a local variable within an if block, even if
 that if block doesn’t get executed, 
the local variable is initialized to nil.
=end
#not all the way wrong but i didnt say that it would be 
#nil nor did i expect it to be 