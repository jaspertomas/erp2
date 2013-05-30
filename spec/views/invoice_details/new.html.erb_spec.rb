require 'spec_helper'

describe "invoice_details/new" do
  before(:each) do
    assign(:invoice_detail, stub_model(InvoiceDetail,
      :invoice_id => 1,
      :product_id => 1,
      :barcode => "MyString",
      :description => "MyString",
      :qty => "9.99",
      :discamt => "9.99",
      :is_cancelled => false
    ).as_new_record)
  end

  it "renders new invoice_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoice_details_path, :method => "post" do
      assert_select "input#invoice_detail_invoice_id", :name => "invoice_detail[invoice_id]"
      assert_select "input#invoice_detail_product_id", :name => "invoice_detail[product_id]"
      assert_select "input#invoice_detail_barcode", :name => "invoice_detail[barcode]"
      assert_select "input#invoice_detail_description", :name => "invoice_detail[description]"
      assert_select "input#invoice_detail_qty", :name => "invoice_detail[qty]"
      assert_select "input#invoice_detail_discamt", :name => "invoice_detail[discamt]"
      assert_select "input#invoice_detail_is_cancelled", :name => "invoice_detail[is_cancelled]"
    end
  end
end
