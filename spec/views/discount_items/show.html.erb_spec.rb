require 'rails_helper'

RSpec.describe "discount_items/show", type: :view do
  before(:each) do
    @discount_item = assign(:discount_item, DiscountItem.create!(
      :discount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
