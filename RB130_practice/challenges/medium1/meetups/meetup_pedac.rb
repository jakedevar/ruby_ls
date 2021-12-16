
=begin
==========================
         Problem
--------------------------
create a program that given a year and month along with the day and which day of the month being passed into a method returns a date like civil time 
when we create these we are actually creating objects that represent a meetup date 

--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 'first', 'second', 'third', 'fourth', 'fifth', 'last', and 'teenth' will be strings that are passed to the instacne method 
		- this will be case insensitive 
-  Inputs: strings and integers 
-  Output: integers reping a date or maybe a date object 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
i need to return nil if the date is not correct/real
the first and the fouth, third all reference integers i most likely have to pass into the date class methods 
--------------------------
Examples/Test Cases/Edge's
--------------------------

if none exits in month/day then return nil 

--------------------------
     Data Structure
--------------------------
i need to think about how to convert these strings into something that the computer will recognize, 
if i use a big complicated case statement i see that getting really hairy 
	maybe i could use a hash instead 
--------------------------
       Algorithm
--------------------------
# Define a class Meetup with a constructor taking a month and a year
# and a method day(weekday, schedule).
# where weekday is one of: monday, tuesday, wednesday, etc.
# and schedule is first, second, third, fourth, fifth, last, or teenth.

1. make the constructor create a date object
2. go though the month and search each day
3. return the date once the requirements for the strings into Meetup#day are met 

for day make a hash that returns integers representing the days that they are passed in
	first -> 1 and so on 
	1. i will make the

im thinking that I may have to use a case statment on weekday however since i cannot think of a good way 
to automatically call monday? or such on the string 
1. make hash in the object 

1. make a case statment on the day of the week
2. make methods monday-sunday
3. have them track the amount of days based on schedule
	- have and upto date method inside that iterates through month and ups counter when day and number conincide, return when it makes sense too
4. return day when scheudle is reached 
--------------------------
          Notes
--------------------------
im thinking i should make the hash apart of the object so that way i can reference @date and get the last day of the month for last 

im thinking that if i do a case statment then i should make methods that return the d passed in when it returns as true for monday? or so forth. it seems overly complicated 

ok it turns out i didnt quite understand the requirements, when the schedule is there it actually is talking about the first monday or second monday or so on
that being said...It seems to me that the way to do this would be to create different methods for each one. however, i could just make a counter that increases when...but wait I would
have to account for monday? or friday? methods

I think what I am going to do is create methods that will go from monday-sunday and pass in the schedule date, inside there I will have a counter rpping the amount of mondays or such in there
	once counter reaches scheudle i will return day 
=end