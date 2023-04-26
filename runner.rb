require 'csv'
require 'json'
require_relative './lib/click_counter'

click_counter = ClickCounter.new("./data/encodes.csv", "./data/decodes.json")
results = click_counter.count_clicks

p results