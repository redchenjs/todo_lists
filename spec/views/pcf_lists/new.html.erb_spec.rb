require 'spec_helper'

describe "pcf_lists/new" do
  before(:each) do
    assign(:pcf_list, stub_model(PcfList,
      :title => "MyString",
      :author => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new pcf_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pcf_lists_path, "post" do
      assert_select "input#pcf_list_title[name=?]", "pcf_list[title]"
      assert_select "input#pcf_list_author[name=?]", "pcf_list[author]"
      assert_select "textarea#pcf_list_content[name=?]", "pcf_list[content]"
    end
  end
end
