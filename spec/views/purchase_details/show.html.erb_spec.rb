require 'spec_helper'

describe "purchase_details/show" do
  before(:each) do
    @purchase_detail = assign(:purchase_detail, stub_model(PurchaseDetail,
      :purchase_id => 1,
      :description => "Description",
      :qty => "9.99",
      :price => "9.99",
      :total => "",
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :PurchaseDetails => "Purchase Details",
      :purccode => "",
      :Rails => "Rails",
      :g => "G",
      :scaffold => "Scaffold",
      :Piscamt => "9.99",
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
    rendered.should match(//)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Purchase Details/)
    rendered.should match(//)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
