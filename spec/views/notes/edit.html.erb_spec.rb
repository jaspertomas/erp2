require 'spec_helper'

describe "notes/edit" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :name => "MyString",
      :description => "MyString",
      :parent_id => 1,
      :priority => 1
    ))
  end

  it "renders the edit note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notes_path(@note), :method => "post" do
      assert_select "input#note_name", :name => "note[name]"
      assert_select "input#note_description", :name => "note[description]"
      assert_select "input#note_parent_id", :name => "note[parent_id]"
      assert_select "input#note_priority", :name => "note[priority]"
    end
  end
end
