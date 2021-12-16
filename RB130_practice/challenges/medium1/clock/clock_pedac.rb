=begin
==========================
         Problem
--------------------------
create a clock that is independent of date 
you should be able to add and subtract time completly based on arithmatic funcitons 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: do not use time or date functions in ruby use arithmatic
		- two clock objects with the same time on them should be equal 
		- there needs to be a class method ::at(arg)
		- there needs to be a to_s method that formats the time correclty
		- the time needs to work backwards as well as forwards 

-  Inputs: integers representing time 
-  Output: a string in the time format 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
at needs to return an integer
to_s needs to actually do most of the heavy lifting when it formats the time 
most likely I will need to use the format method in the ruby library 
the Time::at method needs to take an optional second arugment 
--------------------------
Examples/Test Cases/Edge's
--------------------------

given in the test cases 

--------------------------
     Data Structure
--------------------------
it seems like the to_s mehtod is actually doing most of the heavy lifting and the at method is just inputing an integer 
i also need to think about how this calculation needs to work, i need to be able to divmod 60 on the total minutes that the thing is, 
which means that i need to multiply the hours by 60 in order to get the correct minutes? That feels right but unecessary for some reason I will think on it 
--------------------------
       Algorithm
--------------------------
1440 minutes in a day 
1. take in the integers with the time at method 
2. convert to the correct time in to_s with another method
	- in convert method save the first 60 divmod to a local var
	- subtract or add 1440 to the total mintues untill it is in the necessary range 
3. format the time and spit out a string 

--------------------------
          Notes
--------------------------
maybe i need to make two more methods aside from convert that subtract the total minutes if they are above 1440 or below 0 
or wait, I could jsut divmod the first array item from the first divmod and then take the remainder from there to add to the hours 
ya i could do that but again i would jsut be adding 24 or subtracting 24 untill it works, so really its a horse a piece except with more steps 

I took a peak at JUST  the to_s method in the description, I also noticed in the hints that a new instance should be created in at which makes sense why my class to_s was not working
i also took a quick peak JUST at the way LS made a new obejct 

I had ignored the + and - signs in the hints but now after knowing i need new instances it makes more sense why i need both

overide the == method in the clock class 

also i need to make sure that - and + are not mutating the clock object and are instead creating a new object 

now its throwing an error on the last test because its calling the convert method on an array because @total_minutes is already set to an array at that point.
That means either I need a refactor or I need to put in a guard clause for that test 
=end