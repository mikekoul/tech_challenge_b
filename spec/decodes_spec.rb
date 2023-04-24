require './lib/decodes'

RSpec.describe Decodes do
  before :each do
    @decode = Decodes.new("./data/decodes.json")
  end

  it 'exists' do
    expect(@decode).to be_an_instance_of(Decodes)
  end

  it 'parses the data and returns only the entries from 2021 if multiple years are present' do
    expect(@decode.parse_2021_entries).to be_a(Array) 
  end

end