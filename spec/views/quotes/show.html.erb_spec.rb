require 'spec_helper'

describe "quotes/show" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :vendor_id => 1,
      :product_id => 2,
      :price => "9.99",
      :discrate => "Discrate",
      :discamt => "9.99",
      :ref_class => "Ref Class",
      :ref_id => 3,
      :total => "9.99",
      :mine => false,
      :is_cancelled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/Discrate/)
    rendered.should match(/9.99/)
    rendered.should match(/Ref Class/)
    rendered.should match(/3/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
