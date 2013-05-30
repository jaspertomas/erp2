require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Produttype_id => 1,
        :qty => "9.99",
        :category1 => "Category1",
        :category2 => "Category2",
        :category3 => "Category3",
        :category4 => "Category4",
        :category5 => "Category5",
        :category6 => "Category6",
        :category7 => "Category7",
        :category8 => "Category8",
        :category9 => "Category9",
        :category10 => "Category10",
        :publish => false,
        :monitored => false,
        :barcode => "Barcode",
        :is_service => false
      ),
      stub_model(Product,
        :name => "",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Produttype_id => 1,
        :qty => "9.99",
        :category1 => "Category1",
        :category2 => "Category2",
        :category3 => "Category3",
        :category4 => "Category4",
        :category5 => "Category5",
        :category6 => "Category6",
        :category7 => "Category7",
        :category8 => "Category8",
        :category9 => "Category9",
        :category10 => "Category10",
        :publish => false,
        :monitored => false,
        :barcode => "Barcode",
        :is_service => false
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Category1".to_s, :count => 2
    assert_select "tr>td", :text => "Category2".to_s, :count => 2
    assert_select "tr>td", :text => "Category3".to_s, :count => 2
    assert_select "tr>td", :text => "Category4".to_s, :count => 2
    assert_select "tr>td", :text => "Category5".to_s, :count => 2
    assert_select "tr>td", :text => "Category6".to_s, :count => 2
    assert_select "tr>td", :text => "Category7".to_s, :count => 2
    assert_select "tr>td", :text => "Category8".to_s, :count => 2
    assert_select "tr>td", :text => "Category9".to_s, :count => 2
    assert_select "tr>td", :text => "Category10".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Barcode".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
