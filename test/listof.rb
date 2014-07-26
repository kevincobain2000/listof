# ait add .;gem build listof.gemspec ;gem install listof;ruby test/listof.rb
require 'listof'

# puts Listof.find("countries")
# puts Listof.find("countries").to_json
# puts Listof.find("occupations").to_yaml

puts Listof.all().to_yaml
# puts Listof.find("alphabets").to_yaml
alphabets = Listof.find("alphabets")
# puts alphabets['source']
# puts alphabets['image']