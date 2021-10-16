#exercise_9.rb
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#im looking in the docs and i cant find map available on 
#hashes. it looks like its only avialable on arrays
#i ran the code and it didnt break seemingly but i will print it 
## p ing it broke it and it looks like the solution was something else

There are some interesting things to point out here. First, the return value of map is an array, which is the collection type that map always returns. Second, where did that nil come from? If we look at the if condition (value.size > 3), we'll notice that it evaluates as true when the length of value is greater than 3. In this case, the only value with a length greater than 3 is 'bear'. This means that for the first element, 'ant', the condition evaluates as false and value isn't returned.

When none of the conditions in an if statement evaluates as true, the if statement itself returns nil. That's why we see nil as the first element in the returned array.