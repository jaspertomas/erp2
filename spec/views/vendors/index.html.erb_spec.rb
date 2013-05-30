require 'spec_helper'

describe "vendors/index" do
  before(:each) do
    assign(:vendors, [
      stub_model(Vendor,
        :name => "Name",
        :addr1 => "Addr1",
        :addr2 => "Addr2",
        :addr3 => "Addr3",
        :vtype => "Vtype",
        :cont1 => "Cont1",
        :cont2 => "Cont2",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :faxnum => "Faxnum",
        :email => "Email",
        :ta => "Ta",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Vendors => "Vendors",
        :name => "",
        :name => "Name"
      ),
      stub_model(Vendor,
        :name => "Name",
        :addr1 => "Addr1",
        :addr2 => "Addr2",
        :addr3 => "Addr3",
        :vtype => "Vtype",
        :cont1 => "Cont1",
        :cont2 => "Cont2",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :faxnum => "Faxnum",
        :email => "Email",
        :ta => "Ta",
        :Rails => "Rails",
        :g => "G",
        :scaffold => "Scaffold",
        :Vendors => "Vendors",
        :name => "",
        :name => "Name"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Addr1".to_s, :count => 2
    assert_select "tr>td", :text => "Addr2".to_s, :count => 2
    assert_select "tr>td", :text => "Addr3".to_s, :count => 2
    assert_select "tr>td", :text => "Vtype".to_s, :count => 2
    assert_select "tr>td", :text => "Cont1".to_s, :count => 2
    assert_select "tr>td", :text => "Cont2".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Faxnum".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Ta".to_s, :count => 2
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Vendors".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
