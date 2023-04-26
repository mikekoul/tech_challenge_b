require './lib/encodes'

RSpec.describe Encodes do
  before :each do
    @encode = Encodes.new("./data/encodes.csv")
  end

  it 'exists' do
    expect(@encode).to be_an_instance_of(Encodes)
  end

  it 'parses the data and returns an array' do
    expect(@encode.parse_csv).to be_a(Array)
    expect(@encode.parse_csv[0]).to eq(
      {
      "long_url"=>"https://google.com/",
      "domain"=>"bit.ly",
      "hash"=>"31Tt55y"
      })
  end
end