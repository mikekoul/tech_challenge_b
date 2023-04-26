# README
Take Home Challenge

## Overview
The Challenge - Analyze data from two different data sets and return the number of clicks specifically from 2021 for each record in the csv data set. The program should output an sorted array of JSON objects containing the long URL as the key and the click count as the value. The array should be sorted descending by click count.

Example: [{"https://google.com": 3}, {"https://www.twitter.com": 2}]

## Technologies/Gems
  - Ruby
  - RSpec

## Install + Setup

Begin by cloning down the program and run a bundle to install gems

`$ bundle install`

## Run the Program

`$ ruby runner.rb`

### Program Output

Returns a sorted array of JSON objects with the long URL as the key and the click count as the value for the year 2021.
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

## Future Improvements 
- Add argument to Decode method `parse_2021_entries` to parse out different years other than 2021 which is hard coded at the moment.  Change name of method to `parse_entries_by_year`. 
- Add error handling and sad path testing to build a more robust program


## Contributors
  - [Michael Koulouvaris](https://github.com/mikekoul)
