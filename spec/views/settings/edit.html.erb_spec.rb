require 'spec_helper'

describe "settings/edit" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :name => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => settings_path(@setting), :method => "post" do
      assert_select "input#setting_name", :name => "setting[name]"
      assert_select "input#setting_value", :name => "setting[value]"
    end
  end
end
