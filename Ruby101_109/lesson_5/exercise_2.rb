# exercise_2.rb
books = [
  { title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez',
    published: '1967' },
  { title: 'The Great Gatsby', author: 'F. Scott Fitzgerald',
    published: '1925' },
  { title: 'War and Peace', author: 'Leo Tolstoy', published: '1869' },
  { title: 'Ulysses', author: 'James Joyce', published: '1922' }
]
# p books.sort_by do |hash|
# hash[:published]
# end

# i litterally tried this and it didnt work but idk whats going on
books.sort_by do |book|
  book[:published]
end
# => [
# {:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"},
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}
# ]
# still dosent work
