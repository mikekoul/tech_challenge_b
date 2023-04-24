require 'csv'

class Encodes
  def initialize(file_path)
    @file_path = file_path
  end

  def parse_csv
    encodes_array = []

    CSV.foreach(@file_path, headers: true) do |row|
      row_data = {}
      row.headers.each do |header|
        row_data[header] = row[header]
      end
      encodes_array << row_data
    end
    encodes_array
  end
end
