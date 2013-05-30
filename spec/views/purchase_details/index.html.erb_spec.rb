require 'spec_helper'

describe "purchase_details/index" do
  before(:each) do
    assign(:purchase_details, [
      stub_model(PurchaseDetail,
        :purchase_id => 1,
        :description => "Description",
        :qty => "9.99",
        :price => "9.99",
        :total => "9.99",
        :tax => "9.99",
        :product_id => 2,
        :barcode => "Barcode",
        :discrate => "Discrate",
        :discamt => "9.99",
        :is_cancelled => false
      ),
      stub_model(PurchaseDetail,
        :purchase_id => 1,
        :description => "Description",
        :qty => "9.99",
        :price => "9.99",
        :total => "9.99",
        :tax => "9.99",
        :product_id => 2,
        :barcode => "Barcode",
        :discrate => "Discrate",
        :discamt => "9.99",
        :is_cancelled => false
      )
    ])
  end

  it "renders a list of purchase_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Barcode".to_s, :count => 2
    assert_select "tr>td", :text => "Discrate".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
