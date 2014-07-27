![listof logo](http://listof.herokuapp.com/images/list.png "listof logo")

# Demo

http://listof.herokuapp.com

# Listof

### Why ?

As a developer I found myself wasting a lot of time to get a ``list of`` the US states

- Google: list of the US states
- Jump to wikipedia or some other webpage
- Copy paste(usually is a table) to my editor (sublime)
- Remove unwanted info
- Finally the text format
- Save it in a file and IO read
- Convert them to JSON, xml etc.. on the go

### Solution

```
irb> Listof.find('us_states')
```

### Current Situation

Currently it is packed in a gem ``listof``. 
Future plan to pack with pip, npm or other package managers

- Interface: http://listof.herokuapp.com/
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

## List of

1. Alphabets ``listof.find('alphabets')``
2. Baby Names Male ``listof.find('baby_names_male')``
3. Countries ``listof.find('countries')``
4. Countries Asia ``listof.find('countries_asia')``
5. Dog Names Female ``listof.find('dog_names_female')``
6. Dog Names Male ``listof.find('dog_names_male')``
7. European Countries ``listof.find('european_countries')``
8. Fruits ``listof.find('fruits')``
9. Girl Names 2014 ``listof.find('girl_names_2014')``
10. Hobbies ``listof.find('hobbies')``
11. Indian Companies ``listof.find('indian_companies')``
12. Jobs ``listof.find('jobs')``
13. Kanji Three Strokes ``listof.find('kanji_three_strokes')``
14. Last Names ``listof.find('last_names')``
15. Movies Imdb Top 250 ``listof.find('movies_imdb_top_250')``
16. Non Words ``listof.find('non_words')``
17. Occupations ``listof.find('occupations')``
18. Phobias ``listof.find('phobias')``
19. Questions ``listof.find('questions')``
20. Religions ``listof.find('religions')``
21. Sports ``listof.find('sports')``
22. Top Movies ``listof.find('top_movies')``
23. Us States ``listof.find('us_states')``
24. Vegetables ``listof.find('vegetables')``
25. Weapons ``listof.find('weapons')``
26. Xbox Games ``listof.find('xbox_games')``
27. Youtubers ``listof.find('youtubers')``
28. Zombie Movies ``listof.find('zombie_movies')``

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add Your file with the list in data/**sushi_fishes.txt**
4. Commit your changes (`git commit -am 'Add your list'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request to **master**
