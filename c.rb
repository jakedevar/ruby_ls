def yes(&yes) 
  yield
end

a = proc {puts 'ya'}
yes(&a)

