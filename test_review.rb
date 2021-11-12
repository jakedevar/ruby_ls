def test
	arr = ['Classes', 'objects', 'Use attr_* to create setter and getter methods', 'How to call setters and getters', 'Instance methods vs. class methods ', 'encapsulation', 'polymorphism',
		'Method Access Control', 'Referencing and setting instance variables vs. using getters and setters', 'Class Inheritance', 'Modules', 'Method lookup path', 'calling methods with self',
		 'the scope of self', 'fake operators', 'equality', 'what are collaborator objects',
		'constructor methods', 'ducktyping', 'instance variables', 'class variables', 'constant scope', 'overiding methods',
		'what is called when we use puts', 'what method is called with p', 'how is super used and how do you call it', 'what is interface inheretance', 
		'how to determine when there should be inheritance or collab objects',
		'can you instantiate modules?', 'what does instantiate mean?', 'what is not an object?'].shuffle 
	arr.size.times do 
		system 'clear'
		p arr.pop 
		p arr.size
		input = gets.chomp 
	end 
end

test