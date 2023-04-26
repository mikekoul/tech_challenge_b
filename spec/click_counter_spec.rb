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

  it 'can count the matching entries for each bitlink and format the data in descending order' do
    expect(@click_counter.count_clicks).to eq(
      [{"https://youtube.com/"=>557},
      {"https://twitter.com/"=>512},
      {"https://reddit.com/"=>510},
      {"https://github.com/"=>497},
      {"https://linkedin.com/"=>496},
      {"https://google.com/"=>492}])
  end
end