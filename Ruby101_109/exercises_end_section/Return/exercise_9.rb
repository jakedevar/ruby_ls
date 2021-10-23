# exercise_9.ruby

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0,1,2,3,4,5
# because if is evaluated after every
# instance so once it hits two the
# return breaks the times
# and i guess return didnt specify a return
# so value is nil
