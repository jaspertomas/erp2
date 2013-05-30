require 'spec_helper'

describe "warehouses/new" do
  before(:each) do
    assign(:warehouse, stub_model(Warehouse,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new warehouse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => warehouses_path, :method => "post" do
      assert_select "input#warehouse_name", :name => "warehouse[name]"
    end
  end
end
