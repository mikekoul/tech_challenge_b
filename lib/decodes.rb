require 'json'

class Decodes
  def initialize(file_path)
    @file_path = file_path
  end

  def parse_2021_entries
    json = File.read(@file_path)
    data = JSON.parse(json)
    data.select { |entry| entry['timestamp'][0..3] == '2021' }
  end
end