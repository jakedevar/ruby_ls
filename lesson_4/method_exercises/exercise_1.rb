the return value of the select method below is []

i was incorrect. it looks like the hi acts as a truthy
value and will allow the code to run any way acting as 
a gate for it. 

select performs selection based on the truthiness of
 the block's return value. In this case the return 
 value will always be 'hi', which is a "truthy" value.
 Therefore select will return a new array 
containing all of the elements in the original array.