require 'rails_helper'

RSpec.feature "Events", type: :feature do
  scenario "user creates a new event" do
    user = FactoryBot.create(:user)
    visit root_path

    click_link "イベントを作成する"
  end
end
