require 'yaml'
M = YAML.load_file('mad.yml')

M['story'].gsub!(/0/, M['verbs'].sample)
M['story'].gsub!(/1/, M['nouns'].sample)
M['story'].gsub!(/2/, M['adverbs'].sample)
p M['story'].gsub!(/3/, M['adjectives'].sample)
