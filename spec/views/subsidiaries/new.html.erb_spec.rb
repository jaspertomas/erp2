require 'spec_helper'

describe "subsidiaries/new" do
  before(:each) do
    assign(:subsidiary, stub_model(Subsidiary,
      :code => "MyString",
      :name => "MyString",
      :account_code => "MyString",
      :fund_id => 1
    ).as_new_record)
  end

  it "renders new subsidiary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subsidiaries_path, :method => "post" do
      assert_select "input#subsidiary_code", :name => "subsidiary[code]"
      assert_select "input#subsidiary_name", :name => "subsidiary[name]"
      assert_select "input#subsidiary_account_code", :name => "subsidiary[account_code]"
      assert_select "input#subsidiary_fund_id", :name => "subsidiary[fund_id]"
    end
  end
end
