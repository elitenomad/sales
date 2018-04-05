require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      :email => "MyString",
      :guid => "MyString",
      :product => nil,
      :stripe_id => "MyString"
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input[name=?]", "sale[email]"

      assert_select "input[name=?]", "sale[guid]"

      assert_select "input[name=?]", "sale[product_id]"

      assert_select "input[name=?]", "sale[stripe_id]"
    end
  end
end
