# gem build listof.gemspec ;gem install listof;ruby test/listof.rb
require 'listof'

puts Listof.find("countries")