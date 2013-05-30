require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :tin_no => "MyString",
      :address => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :faxnum => "MyString",
      :email => "MyString",
      :note => "MyString",
      :rep => "MyString",
      :repno => "MyString",
      :rep2 => "MyString",
      :rep2no => "MyString",
      :taxitem => "MyString",
      :notepad => "MyString",
      :salutation => "MyString",
      :is_suki => false
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_tin_no", :name => "customer[tin_no]"
      assert_select "input#customer_address", :name => "customer[address]"
      assert_select "input#customer_phone1", :name => "customer[phone1]"
      assert_select "input#customer_phone2", :name => "customer[phone2]"
      assert_select "input#customer_faxnum", :name => "customer[faxnum]"
      assert_select "input#customer_email", :name => "customer[email]"
      assert_select "input#customer_note", :name => "customer[note]"
      assert_select "input#customer_rep", :name => "customer[rep]"
      assert_select "input#customer_repno", :name => "customer[repno]"
      assert_select "input#customer_rep2", :name => "customer[rep2]"
      assert_select "input#customer_rep2no", :name => "customer[rep2no]"
      assert_select "input#customer_taxitem", :name => "customer[taxitem]"
      assert_select "input#customer_notepad", :name => "customer[notepad]"
      assert_select "input#customer_salutation", :name => "customer[salutation]"
      assert_select "input#customer_is_suki", :name => "customer[is_suki]"
    end
  end
end
