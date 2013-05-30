require 'spec_helper'

describe "vendors/show" do
  before(:each) do
    @vendor = assign(:vendor, stub_model(Vendor,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Addr1/)
    rendered.should match(/Addr2/)
    rendered.should match(/Addr3/)
    rendered.should match(/Vtype/)
    rendered.should match(/Cont1/)
    rendered.should match(/Cont2/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Faxnum/)
    rendered.should match(/Email/)
    rendered.should match(/Ta/)
    rendered.should match(/Rails/)
    rendered.should match(/G/)
    rendered.should match(/Scaffold/)
    rendered.should match(/Vendors/)
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
