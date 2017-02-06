require 'listof'

# puts Listof.find("countries")
# puts Listof.find("countries").to_json
# puts Listof.find("occupations").to_yaml
# puts Listof.find("top_movies").to_yaml


all = Listof.all()
git_file_path = "https://github.com/kevincobain2000/listof/blob/master/data/"

puts '<table>'
puts '<tbody>'
all.each do |a|
    list_title = a[1]
    link = 
    puts '<tr>'
    puts '<td>'
    puts "<a href='https://github.com/kevincobain2000/listof/blob/master/data/#{list_title}.txt' title='#{list_title}'>#{list_title}</a>"
    puts '</td>'
    puts '</tr>'
end
puts '</tbody>'
puts '</table>'