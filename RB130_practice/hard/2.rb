# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

=begin 
it seems that there is a to_s method for the proc class jsut like objects 
also procs are an object/instance of Proc class 
there is a proc call method that will call the proc and it does not complain about missing arugments 
=end

# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

=begin 
it seems that there is two ways you can instantiate a lambda one with the lambda method and the other eith a -> method ? however it is still a proc object 
even when you call class on it they are both definitly procs 
of course the arity is very strict. 
there is also no Lambda class as seen by the call to class as well as the attempt to instantiate a new Lambda object with the Lambda.new usual way 
=end

# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

=begin 
yield will not automatically pass in arugments 
also obviously yield needs a block or it will throw localjump error
=end

# # Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}

=begin 
so arity is lenient, also there needs to be an argument defined in a block or there will be a name error thrown 
=end

=begin 
it seems as though procs can be called without needing an argument also lambdas have strict arity and are apart of Procs, also return operates differently
in lambdas as it does with procs 
there is no lambda class
blocks need at least to reference a variable or method that actually exits either as the blocks argument even if its nil 
=end