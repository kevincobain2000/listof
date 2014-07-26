# ait add .;gem build listof.gemspec ;gem install listof;ruby test/listof.rb
require 'listof'

# puts Listof.find("countries")
# puts Listof.find("countries").to_json
# puts Listof.find("occupations").to_yaml
# puts Listof.find("indian_companies").to_yaml
# puts Listof.find("kanji_three_strokes").to_yaml
# puts Listof.by_alphabet("c")
# puts Listof.all().to_yaml
puts Listof.find("top_movies").to_yaml
top_movies = Listof.find("top_movies")
puts top_movies['source']
puts top_movies['image']