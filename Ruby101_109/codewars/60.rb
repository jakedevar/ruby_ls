a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

def lexi(arr1, arr2)
  arr1.each do |ele1|
    arr2.each do |ele2|
      return [] if !ele2.include?(/#{ele1}/)
    end
  end
  arr1
end

p lexi(a1, a2) #== ["arp", "live", "strong"]
