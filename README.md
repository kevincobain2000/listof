![listof logo](http://listof.herokuapp.com/images/list.png "listof logo")

# Demo

http://listof-app.herokuapp.com/#/tab/chats

# Listof

### Solution

```
irb> Listof.find('us_states')
```

### Current Situation

Currently it is packed in a gem ``listof``.

- Interface: http://listof-app.herokuapp.com/#/tab/chats
- Repo: https://github.com/kevincobain2000/listof


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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add Your file with the list in data/**sushi_fishes.txt**
4. Commit your changes (`git commit -am 'Add your list'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request to **master**
