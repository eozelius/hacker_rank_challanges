require_relative 'dependency_helper'

RSpec.describe RecurseCereal do
  let(:r) { RecurseCereal.new }

  it 'should print n, when n is not divisible by 3 or 5' do
    n = 17
    expect(r.output[n - 1]).to eq(n.to_s)
  end

  it 'should print \'Crackle\' when n is divisible by only 3' do
    n = 9
    expect(r.output[n - 1]).to eq('Crackle')
  end

  it 'should print \'Pop\' when n is divisible by only 5' do
    n = 20
    expect(r.output[n - 1]).to eq('Pop')
  end

  it 'should print \'CracklePop\' when n is divisible by 3 and 5' do
    n = 15
    expect(r.output[n - 1]).to eq('CracklePop')
  end
end