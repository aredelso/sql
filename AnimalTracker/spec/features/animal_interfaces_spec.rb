require 'rails_helper'

RSpec.feature "AnimalInterfaces", type: :feature do
  context "As an animal tracker" do
    it "I can visit the main page" do
      visit '/'
      expect(page).to have_content("Welcome to the Animal Tracker")
    end

    it "I can create an animal and save it in the database from the front page" do
      visit '/'
      fill_in 'Name', with: 'Dik-dik'
      click_button 'Save'
      expect(Species.first).to be_a(Species)
    end
  end
end
