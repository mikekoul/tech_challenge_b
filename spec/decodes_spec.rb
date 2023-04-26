require './lib/decodes'

RSpec.describe Decodes do

  it 'exists' do

    @decode = Decodes.new("./data/decodes.json")

    expect(@decode).to be_an_instance_of(Decodes)
  end

  it 'parses the data and returns only the entries from 2021 if multiple years are present' do
    
    @decode = Decodes.new("./data/decodes.json")

    expect(@decode.parse_2021_entries).to be_a(Array) 
  end

  it 'use a test json file to ensure the results are correct' do

    @decode = Decodes.new("./data/decodes_test.json")

    expect(@decode.parse_2021_entries).to eq([{
    "bitlink"=> "http://bit.ly/2lNPjVU",
    "user_agent"=> "Mozilla/5.0 (iPhone; U; CPU iOS 2_0 like Mac OS X; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Mobile/XXXXX Safari/525.20",
    "timestamp"=> "2021-07-29T00:00:00Z",
    "referrer"=> "direct",
    "remote_ip"=> "4.14.244.85"
  }])
  end 
  
end