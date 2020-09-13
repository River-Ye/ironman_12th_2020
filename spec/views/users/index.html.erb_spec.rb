require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: 'Name',
        email: 'Email',
        phone: 'Phone',
        address: 'Address',
      ),
      User.create!(
        name: 'Name',
        email: 'Email',
        phone: 'Phone',
        address: 'Address',
      )
    ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone'.to_s, count: 2
    assert_select 'tr>td', text: 'Address'.to_s, count: 2
  end
end
