=begin
------------------- Problem ---------------------
given a string return a hash within an array representing the people their age and ocupation

------------------- Examples --------------------
given

------------------- Data ------------------------
using arrays

------------------- Algorithm -------------------
init two arrays
one result
one person
then call split on string
call each with index on the array
even and odd numberd index
if
took a break and came back and now looking at this its fucking easy
take the string and delete spaces
then split by ','
eachslice(2)
then map {sub array[0].to_sym}
to hash
wait nvm thats wrong hold on

init two hashes
first person
second person
and place correct keys in them with the values being nil
create two arrays as well
append to first array if index is <= arr.size - 1 / 2
then update respectevely the hashes with complex logic of if 0 then :name etc
------------------- Code ------------------------
=end

def organize(str)
  person1 = { name: nil, age: nil, occupation: nil }
  person2 = { name: nil, age: nil, occupation: nil }

  p1_values = []
  p2_values = []

  new_str = str.split(',')
  new_str.each_with_index do |item, i|
    if i <= (new_str.size - 1) / 2
      p1_values << item.strip
    else
      p2_values << item.strip
    end
  end
  person1.keys.each_with_index do |key, i|
    person1[key] = p1_values[i]
  end
  person2.keys.each_with_index do |key, i|
    person2[key] = p2_values[i]
  end
  [person1, person2]
end

p organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor") == [
  { name: "John Mayer", age: "41", occupation: "Singer" },
  { name: "Emily Blunt", age: "36", occupation: "Actor" }
]

p organize("Conan O'Brien, 56, Talk Show Host, Anna Wintour, 69, Editor") == [
  { name: "Conan O'Brien", age: "56", occupation: "Talk Show Host" },
  { name: "Anna Wintour", age: "69", occupation: "Editor" }
]
