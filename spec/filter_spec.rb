require 'filter'
describe 'filters the track' do
  it 'when single frequency is send lower than lower threshold' do
    expect(filter([10], 40, 1000)).to eq [40]
  end
  it 'when single frequency is send higher than highest threshold' do
    expect(filter([1500], 40, 1000)).to eq [1000]
  end
  it 'when single frequency is send within threshold' do
    expect(filter([50], 40, 1000)).to eq [50]
  end
  it 'when  single frequency is send exactly same as lower threshold' do
    expect(filter([40], 40, 1000)).to eq [40]
  end
  it 'when  single frequency is send exactly same as higher threshold' do
    expect(filter([1000], 40, 1000)).to eq [1000]
  end

  it 'when  frequency is send exactly same as threshold' do
    expect(filter([40, 1000], 40, 1000)).to eq [40, 1000]
  end
  it 'when double frequency is send within threshold limit' do
    expect(filter([50, 500], 40, 1000)).to eq [50, 500]
  end

  it 'when  array is list of many frequencies both within limit as well as outside limit ' do
    expect(filter([10, 45, 100, 1001], 40, 1000)).to eq [40, 45, 100, 1000]
  end
  it 'when empty array of frequencies are passed' do
    expect { filter([], 40, 1000) }.to raise_error 'Please provide frequencies'
  end
  it 'raises error when lower threshold is not lower than higher threshold ' do
    expect { filter([45, 100], 40, 30) }.to raise_error 'Please provide adequate threshold values'
  end
end
