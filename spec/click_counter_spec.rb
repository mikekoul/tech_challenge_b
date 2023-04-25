require './lib/click_counter'

RSpec.describe ClickCounter do
  before :each do
    @csv_file = "./data/encodes.csv"
    @json_file = "./data/decodes.json"
    @click_counter = ClickCounter.new(@csv_file, @json_file)
  end

  it 'exists' do
    expect(@click_counter).to be_an_instance_of(ClickCounter)
  end

  

end