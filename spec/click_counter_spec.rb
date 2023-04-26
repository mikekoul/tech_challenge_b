require './lib/click_counter'

RSpec.describe ClickCounter do

  it 'exists' do

    @csv_file = "./data/encodes.csv"
    @json_file = "./data/decodes.json"
    @click_counter = ClickCounter.new(@csv_file, @json_file)

    expect(@click_counter).to be_an_instance_of(ClickCounter)
  end

  it 'can count the matching entries for each bitlink and format the data in descending order' do

    @csv_file = "./data/encodes.csv"
    @json_file = "./data/decodes.json"
    @click_counter = ClickCounter.new(@csv_file, @json_file)

    expect(@click_counter.count_clicks).to eq(
      [
      {"https://youtube.com"=>557},
      {"https://twitter.com"=>512},
      {"https://reddit.com"=>510},
      {"https://github.com"=>497},
      {"https://linkedin.com"=>496},
      {"https://google.com"=>492}
      ])
  end

  it 'use a test json file to ensure that the results are correct' do

    @csv_file = "./data/encodes.csv"
    @json_file = "./data/decodes_test.json"
    @click_counter = ClickCounter.new(@csv_file, @json_file)

    expect(@click_counter.count_clicks).to eq(
      [
      {"https://youtube.com"=>1},
      {"https://google.com"=>0},
      {"https://github.com"=>0},
      {"https://twitter.com"=>0},
      {"https://reddit.com"=>0},
      {"https://linkedin.com"=>0}
      ])
  end
end