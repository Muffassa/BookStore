require 'rails_helper'

RSpec.describe "discount_items/new", type: :view do
  before(:each) do
    assign(:discount_item, DiscountItem.new(
      :discount => 1
    ))
  end

  it "renders new discount_item form" do
    render

    assert_select "form[action=?][method=?]", discount_items_path, "post" do

      assert_select "input#discount_item_discount[name=?]", "discount_item[discount]"
    end
  end
end
