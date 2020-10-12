# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'test', type: :feature, driver: :chrome, js: true, slow: true do
  describe 'Feature spec/功能測試' do
    before(:each) do
      visit users_path
    end

    scenario 'User CRUD' do
      expect(User.count).to eq(0)
      click_on('New User')
      fill_in('Name', with: '小菜')
      fill_in('Email', with: 'river@riverye.com')
      fill_in('Phone', with: '0987654321')
      fill_in('Address', with: '某個地方')
      click_button('Create User')
      expect(User.count).to eq(1)
    end
  end
end
