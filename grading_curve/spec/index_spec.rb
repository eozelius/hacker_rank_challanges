require_relative '../lib/index'

RSpec.describe 'solve function' do
	# let(:grades) { [73, 67, 38, 33] }

	it 'rounds up to 60 from 59' do
		g = solve([59])
		expect(g).to contain_exactly(60)
	end

	it 'rounds up to 70 from 68' do
		g = solve([68])
		expect(g).to contain_exactly(70)
	end

	it 'does not round up to 80 from 77' do
		g = solve([77])
		expect(g).to contain_exactly(77)
	end

	it 'does not round anything below 38' do 
		g = solve([37, 38])
		expect(g).to contain_exactly(37, 40)
	end
end