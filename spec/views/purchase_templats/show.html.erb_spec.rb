require 'spec_helper'

describe "purchase_templats/show" do
  before(:each) do
    @purchase_templat = assign(:purchase_templat, stub_model(PurchaseTemplat,
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :Ps => "Ps",
      :g => "G",
      :scaffold => "Scaffold",
      :Quotes => "Quotes",
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
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Ps/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Quotes/)
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
