require 'spec_helper'

describe "quotes/edit" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :vendor_id => 1,
      :product_id => 1,
      :price => "9.99",
      :discrate => "MyString",
      :discamt => "9.99",
      :ref_class => "MyString",
      :ref_id => 1,
      :total => "9.99",
      :mine => false,
      :is_cancelled => false
    ))
  end

  it "renders the edit quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quotes_path(@quote), :method => "post" do
      assert_select "input#quote_vendor_id", :name => "quote[vendor_id]"
      assert_select "input#quote_product_id", :name => "quote[product_id]"
      assert_select "input#quote_price", :name => "quote[price]"
      assert_select "input#quote_discrate", :name => "quote[discrate]"
      assert_select "input#quote_discamt", :name => "quote[discamt]"
      assert_select "input#quote_ref_class", :name => "quote[ref_class]"
      assert_select "input#quote_ref_id", :name => "quote[ref_id]"
      assert_select "input#quote_total", :name => "quote[total]"
      assert_select "input#quote_mine", :name => "quote[mine]"
      assert_select "input#quote_is_cancelled", :name => "quote[is_cancelled]"
    end
  end
end
