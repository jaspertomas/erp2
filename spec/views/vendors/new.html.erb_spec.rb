require 'spec_helper'

describe "vendors/new" do
  before(:each) do
    assign(:vendor, stub_model(Vendor,
      :name => "MyString",
      :addr1 => "MyString",
      :addr2 => "MyString",
      :addr3 => "MyString",
      :vtype => "MyString",
      :cont1 => "MyString",
      :cont2 => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :faxnum => "MyString",
      :email => "MyString",
      :ta => "MyString",
      :Rails => "MyString",
      :g => "MyString",
      :scaffold => "MyString",
      :Vendors => "MyString",
      :name => "",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new vendor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendors_path, :method => "post" do
      assert_select "input#vendor_name", :name => "vendor[name]"
      assert_select "input#vendor_addr1", :name => "vendor[addr1]"
      assert_select "input#vendor_addr2", :name => "vendor[addr2]"
      assert_select "input#vendor_addr3", :name => "vendor[addr3]"
      assert_select "input#vendor_vtype", :name => "vendor[vtype]"
      assert_select "input#vendor_cont1", :name => "vendor[cont1]"
      assert_select "input#vendor_cont2", :name => "vendor[cont2]"
      assert_select "input#vendor_phone1", :name => "vendor[phone1]"
      assert_select "input#vendor_phone2", :name => "vendor[phone2]"
      assert_select "input#vendor_faxnum", :name => "vendor[faxnum]"
      assert_select "input#vendor_email", :name => "vendor[email]"
      assert_select "input#vendor_ta", :name => "vendor[ta]"
      assert_select "input#vendor_Rails", :name => "vendor[Rails]"
      assert_select "input#vendor_g", :name => "vendor[g]"
      assert_select "input#vendor_scaffold", :name => "vendor[scaffold]"
      assert_select "input#vendor_Vendors", :name => "vendor[Vendors]"
      assert_select "input#vendor_name", :name => "vendor[name]"
      assert_select "input#vendor_name", :name => "vendor[name]"
    end
  end
end
