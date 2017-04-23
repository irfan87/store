require 'rails_helper'

RSpec.describe Item, type: :model do
	it "should be valid with name, description and price" do
		item = Item.new(name: 'abc', description: 'lorem ipsum', price: 1.20)
		expect(item).to be_valid
	end

	it "should be invalid if item name is empty" do
		item = Item.create(name: nil)
		item.valid?
		expect(item.errors[:name]).to include "can't be blank"
	end

	it "should be invalid if item description is empty" do
		item = Item.create(description: nil)
		item.valid?
		expect(item.errors[:description]).to include "can't be blank"
	end

	it "should be invalid if item don't have price" do
		item = Item.create(price: nil)
		item.valid?
		expect(item.errors[:price]).to include "can't be blank"
	end
end
