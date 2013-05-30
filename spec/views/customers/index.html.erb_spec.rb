require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :tin_no => "Tin No",
        :address => "Address",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :faxnum => "Faxnum",
        :email => "Email",
        :note => "Note",
        :rep => "Rep",
        :repno => "Repno",
        :rep2 => "Rep2",
        :rep2no => "Rep2no",
        :taxitem => "Taxitem",
        :notepad => "Notepad",
        :salutation => "Salutation",
        :is_suki => false
      ),
      stub_model(Customer,
        :name => "Name",
        :tin_no => "Tin No",
        :address => "Address",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :faxnum => "Faxnum",
        :email => "Email",
        :note => "Note",
        :rep => "Rep",
        :repno => "Repno",
        :rep2 => "Rep2",
        :rep2no => "Rep2no",
        :taxitem => "Taxitem",
        :notepad => "Notepad",
        :salutation => "Salutation",
        :is_suki => false
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tin No".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Faxnum".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
    assert_select "tr>td", :text => "Rep".to_s, :count => 2
    assert_select "tr>td", :text => "Repno".to_s, :count => 2
    assert_select "tr>td", :text => "Rep2".to_s, :count => 2
    assert_select "tr>td", :text => "Rep2no".to_s, :count => 2
    assert_select "tr>td", :text => "Taxitem".to_s, :count => 2
    assert_select "tr>td", :text => "Notepad".to_s, :count => 2
    assert_select "tr>td", :text => "Salutation".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
