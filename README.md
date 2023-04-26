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

## API Keys

## API Endpoints and Example Output

### `GET /api/v1/forecast?location={{search_location}}`

Returns a JSON formatted hash with the current weather, daily forecasts for the next five days, and hourly forecasts for the next eight hours

```
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "current_weather": {
                "datetime": "September 29 2022, 7:28 AM",
                "sunrise": "September 29 2022, 6:54 AM",
                "sunset": "September 29 2022, 6:46 PM",
                "temperature": 60.19,
                "feels_like": 58.15,
                "humidity": 48,
                "uvi": 0,
                "visibility": 10000,
                "conditions": "scattered clouds",
                "icon": "03d"
 


## Contributors
  - [Michael Koulouvaris](https://github.com/mikekoul)
