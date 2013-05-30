require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Produttype_id => 1,
      :qty => "9.99",
      :category1 => "MyString",
      :category2 => "MyString",
      :category3 => "MyString",
      :category4 => "MyString",
      :category5 => "MyString",
      :category6 => "MyString",
      :category7 => "MyString",
      :category8 => "MyString",
      :category9 => "MyString",
      :category10 => "MyString",
      :publish => false,
      :monitored => false,
      :barcode => "MyString",
      :is_service => false
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_Rails", :name => "product[Rails]"
      assert_select "input#product_g", :name => "product[g]"
      assert_select "input#product_scaffold", :name => "product[scaffold]"
      assert_select "input#product_Produttype_id", :name => "product[Produttype_id]"
      assert_select "input#product_qty", :name => "product[qty]"
      assert_select "input#product_category1", :name => "product[category1]"
      assert_select "input#product_category2", :name => "product[category2]"
      assert_select "input#product_category3", :name => "product[category3]"
      assert_select "input#product_category4", :name => "product[category4]"
      assert_select "input#product_category5", :name => "product[category5]"
      assert_select "input#product_category6", :name => "product[category6]"
      assert_select "input#product_category7", :name => "product[category7]"
      assert_select "input#product_category8", :name => "product[category8]"
      assert_select "input#product_category9", :name => "product[category9]"
      assert_select "input#product_category10", :name => "product[category10]"
      assert_select "input#product_publish", :name => "product[publish]"
      assert_select "input#product_monitored", :name => "product[monitored]"
      assert_select "input#product_barcode", :name => "product[barcode]"
      assert_select "input#product_is_service", :name => "product[is_service]"
    end
  end
end
