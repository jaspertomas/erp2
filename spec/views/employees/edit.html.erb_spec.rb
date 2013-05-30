require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "MyString",
      :commission => 1,
      :is_technician => false
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "input#employee_commission", :name => "employee[commission]"
      assert_select "input#employee_is_technician", :name => "employee[is_technician]"
    end
  end
end
