require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Tin No/)
    rendered.should match(/Address/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Faxnum/)
    rendered.should match(/Email/)
    rendered.should match(/Note/)
    rendered.should match(/Rep/)
    rendered.should match(/Repno/)
    rendered.should match(/Rep2/)
    rendered.should match(/Rep2no/)
    rendered.should match(/Taxitem/)
    rendered.should match(/Notepad/)
    rendered.should match(/Salutation/)
    rendered.should match(/false/)
  end
end
