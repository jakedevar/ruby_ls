=begin
# ------------------- Problem ---------------------
1 = h
2 = bounce
3 = window hight
with a drop hight above a window how manytimes will the window see the ball

# ------------------- Examples --------------------

# ------------------- Data ------------------------
i am going to try and use recursion for this sob

# ------------------- Algorithm -------------------
def tje ,ethod
  return -1 if (b||h) <= 0 || b >=1
  counter = 0
  return 0 if h < w
  the method
  += 1

# ------------------- Code -----------------------

=end

# def bouncingBall(h, b, w)
#   return -1 if h <= 0 || (b > 0 && b < 1) || w >= h
#   counter = 0
#   loop do
#     h = h * b
#     counter += 2 if h > w
#     counter += 1 if h < w
#     break if h < w
#   end
#   counter
# end

# I FUCKING KNEW IT, YOU CAN USE RECURSSION ON THIS SON OF A BITCH I JUST DIDNT KNOW HOW HERE IT IS HERE COMES THE BOI!!!!!

def bouncingBall(h, b, w)
  if h <= 0 || b <= 0 || b >= 1 || w >= h
    -1
  elsif h * b <= w
    1
  else
    2 + bouncingBall(h * b, b, w)
  end
end

p bouncingBall(3, 0.66, 1.5) #== 3

p bouncingBall(30, 0.66, 1.5) == 15

p bouncingBall(30, 0.75, 1.5) == 21

p bouncingBall(30, 0.4, 10) == 3

p bouncingBall(40, 1, 10) == -1

p bouncingBall(-5, 0.66, 1.5) == -1

p bouncingBall(1, 0.66, 0.66) == 1

p bouncingBall(1, 0.66, 1) == -1
