require 'csv'
require 'json'
require_relative 'encodes'
require_relative 'decodes'

class ClickCounter
  def initialize(csv_file, json_file)
    @encode_results = Encodes.new(csv_file).parse_csv
    @decode_results = Decodes.new(json_file).parse_2021_entries 
  end

  def count_clicks
    result_hash = {}

    d_results = @decode_results.map { |d| d['bitlink'][-7..-1] }
    
    @encode_results.each do |e_result|
      long_url = e_result['long_url'].chop
      hash = e_result['hash']
      count = d_results.count(hash)
      result_hash[long_url] = count 
    end

    format_array = result_hash.map { |long_url, count| { long_url => count } } 
    format_array.sort_by { |entry| -entry.values.first }
  end

end