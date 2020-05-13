require 'filter'
describe 'filters the track' do
  it 'when single frequency is send lower than lower threshold' do
    expect(filter([10], 40, 1000)).to eq [40]
  end
  it 'when single frequency is send higher than highest threshold' do
    expect(filter([1500], 40, 1000)).to eq [1000]
  end
  it 'when  frequency is send exactly same as threshold' do
    expect(filter([40, 1000], 40, 1000)).to eq [40, 1000]
  end
  it 'when  array is list of many frequencies both within limit as well as outside limit ' do
    expect(filter([10, 45, 100, 1001], 40, 1000)).to eq [40, 45, 100, 1000]
  end
end
