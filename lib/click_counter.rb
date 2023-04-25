require 'csv'
require 'json'
require_relative 'encodes'
require_relative 'decodes'

class ClickCounter
  def initialize(csv_file, json_file)
    @encode_results = Encodes.new(csv_file).parse_csv
    @decode_results = Decodes.new(json_file).parse_2021_entries 
  end

  
end