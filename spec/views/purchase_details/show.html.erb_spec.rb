require 'spec_helper'

describe "purchase_details/show" do
  before(:each) do
    @purchase_detail = assign(:purchase_detail, stub_model(PurchaseDetail,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/2/)
    rendered.should match(/Barcode/)
    rendered.should match(/Discrate/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
