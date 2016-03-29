require 'rails_helper'

RSpec.describe "discount_items/edit", type: :view do
  before(:each) do
    @discount_item = assign(:discount_item, DiscountItem.create!(
      :discount => 1
    ))
  end

  it "renders the edit discount_item form" do
    render

    assert_select "form[action=?][method=?]", discount_item_path(@discount_item), "post" do

      assert_select "input#discount_item_discount[name=?]", "discount_item[discount]"
    end
  end
end
