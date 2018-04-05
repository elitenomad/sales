require 'rails_helper'

RSpec.describe "sales/edit", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :email => "MyString",
      :guid => "MyString",
      :product => nil,
      :stripe_id => "MyString"
    ))
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do

      assert_select "input[name=?]", "sale[email]"

      assert_select "input[name=?]", "sale[guid]"

      assert_select "input[name=?]", "sale[product_id]"

      assert_select "input[name=?]", "sale[stripe_id]"
    end
  end
end
