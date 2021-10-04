require 'ten_minute_walk'

describe 'ten minute walk app' do
  it 'is less than ten minutes to walk' do
    expect(ten_minute_walk(['w', 's'])).to equal false 
  end 
end