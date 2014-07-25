# Demo and API

http://listof.herokuapp.com/api/dog_names_male

# Listof

TODO: Write a gem description & gem installation from repo

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
puts Listof.by_alphabet("c")
puts Listof.all().to_yaml
```

## List of

1. Alphabets
2. Baby Names Male
3. Countries
4. Countries Asia
5. Dog Names Female
6. Dog Names Male
7. European Countries
8. Fruits
9. Girl Names 2014
10. Hobbies
11. Indian Companies
12. Jobs
13. Kanji Three Strokes
14. Last Names
15. Movies Imdb Top 250
16. Non Words
17. Occupations
18. Phobias
19. Questions
20. Religions
21. Sports
22. Top Movies
23. Us States
24. Vegetables
25. Weapons
26. Xbox Games
27. Youtubers
28. Zombie Movies

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add Your file with the list in **data/ALPHABET/sushi_fishes.txt**
4. Commit your changes (`git commit -am 'Add your list'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request to **develop**
