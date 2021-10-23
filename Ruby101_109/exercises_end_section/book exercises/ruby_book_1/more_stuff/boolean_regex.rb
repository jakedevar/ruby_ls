# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/
    puts "we have a match!"
  else
    puts "No matche here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b? "hockey"
has_a_b?("golf")
