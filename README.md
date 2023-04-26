# README
Take Home Challenge

## Overview



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
