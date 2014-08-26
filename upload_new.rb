#! /usr/bin/env ruby
require 'net/http'
require 'json'

source = "http://listof.herokuapp.com/submit/all_submitted.json"
resp = Net::HTTP.get_response(URI.parse(source))
data = resp.body
result = JSON.parse(data)

result.each do |title, list|
  File.open("data/#{title}.txt", 'w') { |file| file.write(list.join("\n")) }
end