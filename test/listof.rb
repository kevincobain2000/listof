# gem build listof.gemspec ;gem install listof;ruby test/listof.rb
require 'listof'

# puts Listof.find("countries")
# puts Listof.find("countries").to_json
# puts Listof.find("occupations").to_yaml
# puts Listof.find("indian_companies").to_yaml
# puts Listof.list_by_alphabet("c")
puts Listof.list_all().to_yaml