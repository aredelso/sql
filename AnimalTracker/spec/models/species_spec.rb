require 'rails_helper'

RSpec.describe Species, type: :model do
  it "should be savable in the database" do
    expect(Species.create(name: 'Dog')).to be_truthy
    expect(Species.first).to be_a(Species)
    expect(Species.first.name).to eq("Dog")
  end
end
