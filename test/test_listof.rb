require 'listof'
require 'minitest/autorun'

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