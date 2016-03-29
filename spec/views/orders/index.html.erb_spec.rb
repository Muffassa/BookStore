require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :track => "Track"
      ),
      Order.create!(
        :track => "Track"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Track".to_s, :count => 2
  end
end
