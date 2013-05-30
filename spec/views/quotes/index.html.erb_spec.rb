require 'spec_helper'

describe "quotes/index" do
  before(:each) do
    assign(:quotes, [
      stub_model(Quote,
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
      ),
      stub_model(Quote,
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
      )
    ])
  end

  it "renders a list of quotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Discrate".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Ref Class".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
