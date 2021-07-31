#exercise_6.rb


STACK = []

def minilang(string)
  register = 0
  
  lang = {'PRINT' => print(register), 'PUSH'=> push(register), 'POP'=> 0,}
  string.split.each do |item|
    if /[0-9]/.match(item)
      register = item.to_i
    else
      lang[item]
    end
  end
  puts register
end

def mult()

def print(item)
  puts item
end

def pop
  STACK.pop
end

def push(register)
  STACK.push(register)
end







#minilang('PRINT')
# 0       'MULT' => \*, 'ADD'=> \+, 'DIV'=> /, 'SUB' => -, 'MOD'=> % 

minilang('5 PUSH 3 MULT PRINT')
# 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

# minilang('5 PUSH POP PRINT')
# 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

# minilang('-3 PUSH 5 SUB PRINT')
# 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)