require 'spec_helper'

describe "invoice_details/edit" do
  before(:each) do
    @invoice_detail = assign(:invoice_detail, stub_model(InvoiceDetail,
      :invoice_id => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :InvoiceDetails => "MyString",
      :invoice => "MyString",
      :description => "MyString",
      :qty => "9.99",
      :discamt => "9.99",
      :is_cancelled => false
    ))
  end

  it "renders the edit invoice_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoice_details_path(@invoice_detail), :method => "post" do
      assert_select "input#invoice_detail_invoice_id", :name => "invoice_detail[invoice_id]"
      assert_select "input#invoice_detail_Rails", :name => "invoice_detail[Rails]"
      assert_select "input#invoice_detail_g", :name => "invoice_detail[g]"
      assert_select "input#invoice_detail_scaffold", :name => "invoice_detail[scaffold]"
      assert_select "input#invoice_detail_InvoiceDetails", :name => "invoice_detail[InvoiceDetails]"
      assert_select "input#invoice_detail_invoice", :name => "invoice_detail[invoice]"
      assert_select "input#invoice_detail_description", :name => "invoice_detail[description]"
      assert_select "input#invoice_detail_qty", :name => "invoice_detail[qty]"
      assert_select "input#invoice_detail_discamt", :name => "invoice_detail[discamt]"
      assert_select "input#invoice_detail_is_cancelled", :name => "invoice_detail[is_cancelled]"
    end
  end
end
