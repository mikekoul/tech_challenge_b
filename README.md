# README
Take Home Challenge

## Overview
The Challenge - Analyze data from two different data sets and return the number of clicks specifically from 2021 for each record in the csv data set. The program should output an sorted array of JSON objects containing the long URL as the key and the click count as the value. The array should be sorted descending by click count.

Example: [{"https://google.com"=>3}, {"https://www.twitter.com"=>2}]

## Technologies/Gems
  - Ruby
  - RSpec

## Install + Setup

Begin by cloning down the program and run a bundle to install gems

`$ bundle install`

## Run the Program

`$ ruby runner.rb`

### Program Output

Returns a sorted array of JSON objects with the long URL as the key and the click count as the value for the year 2021
```
  [
    {"https://youtube.com"=>557},
    {"https://twitter.com"=>512},
    {"https://reddit.com"=>510},
    {"https://github.com"=>497},
    {"https://linkedin.com"=>496},
    {"https://google.com"=>492}
  ]
 ```
## Run Test Suite

`$ bundle exec rspec`

## Process
- I choose to use Ruby for this challenge because it is the language in which I am most proficient. Since GO does not have an established framework I used standard Ruby over Ruby on Rails. 
- After reading through the prompt multiple times I broke the steps down into three classes and a runner file to run the program.
- The Encodes class handled transforming the csv file into an array of hashes in order for me to interate through it later.
- The Decodes class handled parsing the json file returning only the entries from the year 2021.
- The ClickCounter class handled iterating through the Encodes class array and the Decodes class array, counting each instance the value of the `['hash']` key from the Encodes array matched the last 7 digits of `['bitlink']` key value long form URL from the Decodes array. I did this by mapping the last 7 digits of the `['bitlink']` key and returning an array of only those objects. Then counted the ones that matched each `['hash']` key. Finally, formatted the results together as a key value pair with the `['long_url']` as the key and count being the value. 
- The runner file initiates a new instance of the ClickCounter class with the csv and json files as arguments and executes the `count_clicks` method and returns the output. 

## Future Improvements 
- Add argument to Decode method `parse_2021_entries` to parse out different years other than 2021 which is hard coded at the moment.  Change name of method to `parse_entries_by_year`. 
- Since all the long form URL values were seven digits, I used a range when evaluating the `['bitlink']` key from the json file. To make the program less dependent on that value being seven digits long, I would `split` the string at each ` / ` and evaluate only that section of the string. 
- Add error handling and sad path testing to build a more robust program and test suite.


## Contributor
  - [Michael Koulouvaris](https://github.com/mikekoul)
