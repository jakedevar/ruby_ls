def sandy
  file = file.open('text.txt', 'r')
  yield(file.read)
  file.close
end