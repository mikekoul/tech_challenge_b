require './lib/encodes'

RSpec.describe Encodes do
  before :each do
    @encode = Encodes.new("./data/encodes.csv")
  end

  it 'exists & is an array' do
    expect(@encode).to be_an_instance_of(Encodes)
  end

  it 'parses the data and returns an array' do
    expect(@encode.parse_data).to be_a(Array)
    expect(@encode.parse_data[0]).to eq(
      {"long_url"=>"https://google.com/",    "domain"=>"bit.ly", 
      "hash"=>"31Tt55y"
      })
  end

end