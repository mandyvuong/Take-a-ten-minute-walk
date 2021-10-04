require 'ten_minute_walk'

describe 'ten minute walk app' do
  it 'is less than ten minutes to walk' do
    expect(ten_minute_walk(['w', 's'])).to equal false 
  end 

  it 'is walking more south than north' do
    expect(ten_minute_walk(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n' ])).to equal false 
  end 

  it 'is walking more north than south' do
    expect(ten_minute_walk(['w', 'n', 'e', 'n', 'n', 'e', 'n', 'w', 's', 's'])).to equal false 
  end 

  it 'is walking more west than east' do
    expect(ten_minute_walk(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])).to equal false 
  end 
end

