require 'rails_helper'

RSpec.describe "discount_items/index", type: :view do
  before(:each) do
    assign(:discount_items, [
      DiscountItem.create!(
        :discount => 1
      ),
      DiscountItem.create!(
        :discount => 1
      )
    ])
  end

  it "renders a list of discount_items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
