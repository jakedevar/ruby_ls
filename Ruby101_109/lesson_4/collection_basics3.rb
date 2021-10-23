# collection_basics3.rb

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce',
        broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Vegitable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegitable'
hsh[:apple] = 'Fruit'

puts hsh
