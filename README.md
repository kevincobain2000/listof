# Listof

### Solution

```
irb> Listof.find('us_states')
```


## Installation

Add this line to your application's Gemfile:

    gem 'listof', :git => 'https://github.com/kevincobain2000/listof', :branch => 'master'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install listof

## Usage

```
require 'listof'

puts Listof.find("countries")
puts Listof.find("countries").to_json
puts Listof.find("occupations").to_yaml
puts Listof.find("top_movies").to_yaml
puts Listof.all().to_yaml
```

## Glossary


- http://kevincobain2000.github.io/listof