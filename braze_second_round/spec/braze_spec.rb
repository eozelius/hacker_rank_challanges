require_relative '../lib/braze.rb'

RSpec.describe Braze do
	let(:b) { Braze.new }

	it 'does stuff' do
		expect(b).to eq(1)
	end
end