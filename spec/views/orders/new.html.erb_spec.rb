require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      name: "MyString",
      status: "MyString",
      total_price: 1,
      phone: "MyString",
      address: "MyString",
      email: "MyString",
      note: "MyString",
      user: nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[name]"

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[total_price]"

      assert_select "input[name=?]", "order[phone]"

      assert_select "input[name=?]", "order[address]"

      assert_select "input[name=?]", "order[email]"

      assert_select "input[name=?]", "order[note]"

      assert_select "input[name=?]", "order[user_id]"
    end
  end
end
