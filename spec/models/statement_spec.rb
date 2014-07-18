require "rails_helper"

RSpec.describe Statement, type: :model do

	it 'should have :author, :post attributes' do
		expect(subject.attributes).to include('author','post')
	end

	it 'should validate author presence' do
		expect(Statement.new).not_to be_valid
		expect(Statement.new(author: "Stonka")).to be_valid
	end



	end