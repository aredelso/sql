require 'rails_helper'

RSpec.feature "AnimalInterfaces", type: :feature do
  context "As an animal tracker, " do
    it "I can visit the main page" do
      visit '/'
      expect(page).to have_content("Welcome to the Animal Tracker")
    end
  end
end
