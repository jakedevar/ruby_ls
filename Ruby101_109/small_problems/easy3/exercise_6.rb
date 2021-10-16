#LS solution i tried this one at home but deleted it  i did get it wrong 
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

#this is a shorter version given by LS
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end