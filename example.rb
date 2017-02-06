require 'listof'

# puts Listof.find("countries")
# puts Listof.find("countries").to_json
# puts Listof.find("occupations").to_yaml
# puts Listof.find("top_movies").to_yaml


all = Listof.all()

all.each do |a|
    list_title = a[1]
    puts list_title
end