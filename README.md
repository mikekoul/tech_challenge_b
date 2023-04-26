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

## Run the Test Suite

`$ bundle exec rspec`

### Program Output

Returns a sorted array of JSON objects with the long URL as the key and the click count as the value.
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


## Contributors
  - [Michael Koulouvaris](https://github.com/mikekoul)
