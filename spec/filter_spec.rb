require 'filter'
describe 'filters the track' do
  it 'when single frequency is send lower than lower threshold' do
    expect(filter([10], 40, 1000)).to eq [40]
  end
  it 'when single frequency is send higher than highest threshold' do
    expect(filter([1500], 40, 1000)).to eq [1000]
  end
end
