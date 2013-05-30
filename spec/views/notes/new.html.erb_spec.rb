require 'spec_helper'

describe "notes/new" do
  before(:each) do
    assign(:note, stub_model(Note,
      :name => "MyString",
      :description => "MyString",
      :parent_id => 1,
      :priority => 1
    ).as_new_record)
  end

  it "renders new note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notes_path, :method => "post" do
      assert_select "input#note_name", :name => "note[name]"
      assert_select "input#note_description", :name => "note[description]"
      assert_select "input#note_parent_id", :name => "note[parent_id]"
      assert_select "input#note_priority", :name => "note[priority]"
    end
  end
end
