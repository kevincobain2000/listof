require 'listof'
require 'minitest/autorun'

# puts Listof.find("countries")
# puts Listof.find("countries").to_json
# puts Listof.find("occupations").to_yaml

# puts Listof.all().to_yaml
# puts Listof.find("alphabets").to_yaml
# alphabets = Listof.find("alphabets")
# puts alphabets['source']
# puts alphabets['image']



all = Listof.all()
git_file_path = "https://github.com/kevincobain2000/listof/blob/master/data/"
all.each do |a|
    list_title = a[1]
    list_link = git_file_path + list_title + '.txt'

    md_link = "[" + list_title + "](" + list_link + ")"
    puts "- " + md_link
end

# Test on all data
class ListofTest < MiniTest::Unit::TestCase
    def test_all_class
       assert_equal "Hash", Listof.all().class.to_s
    end
    def test_each_class
        all = Listof.all()
        all.each do |a|
            list_title = a[1]
            assert_equal "Hash", Listof.find(list_title.to_s).class.to_s
        end
    end
end