require 'rails_helper'

RSpec.feature "UserSeesDeviceAndZones", type: :feature do
  it "should see device name and zone names" do
    visit root_path

    expect(page).to have_content "Rachio Test Device"
    expect(page).to have_content "Zone 1"
    expect(page).to have_content "Zone 2"
    expect(page).to have_content "Zone 3"
    expect(page).to have_content "Zone 4"
    expect(page).to have_content "Zone 5"
    expect(page).to have_content "Zone 6"
    expect(page).to have_content "Zone 7"
    expect(page).to have_content "Zone 8"
  end
end
