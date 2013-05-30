require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :brand_id => 1,
      :producttype_id => 2,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/Category1/)
    rendered.should match(/Category2/)
    rendered.should match(/Category3/)
    rendered.should match(/Category4/)
    rendered.should match(/Category5/)
    rendered.should match(/Category6/)
    rendered.should match(/Category7/)
    rendered.should match(/Category8/)
    rendered.should match(/Category9/)
    rendered.should match(/Category10/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Barcode/)
    rendered.should match(/false/)
  end
end
