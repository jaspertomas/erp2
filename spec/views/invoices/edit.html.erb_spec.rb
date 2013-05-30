require 'spec_helper'

describe "invoices/edit" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Invoice,
      :customer_id => 1,
      :customer_name => "MyString",
      :invno => "MyString",
      :ponumber => "MyString",
      :payonly => "9.99",
      :total => "9.99",
      :cheque => "MyString",
      :terms_id => 1,
      :salesman_id => 1,
      :technician_id => 1,
      :template_id => 1,
      :cash => "9.99",
      :chequeamt => "9.99",
      :credit => "9.99",
      :discrate => "MyString",
      :discamt => "9.99",
      :saletype => "MyString",
      :dsrdeduction => "9.99",
      :balance => "9.99",
      :chequedata => "MyString",
      :checkcollectevents => false
    ))
  end

  it "renders the edit invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoices_path(@invoice), :method => "post" do
      assert_select "input#invoice_customer_id", :name => "invoice[customer_id]"
      assert_select "input#invoice_customer_name", :name => "invoice[customer_name]"
      assert_select "input#invoice_invno", :name => "invoice[invno]"
      assert_select "input#invoice_ponumber", :name => "invoice[ponumber]"
      assert_select "input#invoice_payonly", :name => "invoice[payonly]"
      assert_select "input#invoice_total", :name => "invoice[total]"
      assert_select "input#invoice_cheque", :name => "invoice[cheque]"
      assert_select "input#invoice_terms_id", :name => "invoice[terms_id]"
      assert_select "input#invoice_salesman_id", :name => "invoice[salesman_id]"
      assert_select "input#invoice_technician_id", :name => "invoice[technician_id]"
      assert_select "input#invoice_template_id", :name => "invoice[template_id]"
      assert_select "input#invoice_cash", :name => "invoice[cash]"
      assert_select "input#invoice_chequeamt", :name => "invoice[chequeamt]"
      assert_select "input#invoice_credit", :name => "invoice[credit]"
      assert_select "input#invoice_discrate", :name => "invoice[discrate]"
      assert_select "input#invoice_discamt", :name => "invoice[discamt]"
      assert_select "input#invoice_saletype", :name => "invoice[saletype]"
      assert_select "input#invoice_dsrdeduction", :name => "invoice[dsrdeduction]"
      assert_select "input#invoice_balance", :name => "invoice[balance]"
      assert_select "input#invoice_chequedata", :name => "invoice[chequedata]"
      assert_select "input#invoice_checkcollectevents", :name => "invoice[checkcollectevents]"
    end
  end
end
