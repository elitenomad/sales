require 'rails_helper'

RSpec.describe "sales/show", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :email => "Email",
      :guid => "Guid",
      :product => nil,
      :stripe_id => "Stripe"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Guid/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Stripe/)
  end
end
