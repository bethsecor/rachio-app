require 'rails_helper'

RSpec.feature "UserCanWaterZones", type: :feature, js: true do
  it "should be able to fill in form to start watering a zone" do
    visit root_path

    within first('.zone') do
      find('.water-minutes').set "6"
      click_on "Water!"

      expect(page).to have_content("Starting sprinkler...")
    end
  end
end
