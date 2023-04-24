require './lib/decodes'

RSpec.describe Decodes do
  before :each do
    @decode = Decodes.new("./data/decodes.json")
  end

  it 'exists' do
    expect(@decode).to be_an_instance_of(Decodes)
  end

end