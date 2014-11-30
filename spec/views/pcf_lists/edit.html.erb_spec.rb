require 'spec_helper'

describe "pcf_lists/edit" do
  before(:each) do
    @pcf_list = assign(:pcf_list, stub_model(PcfList,
      :title => "MyString",
      :author => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit pcf_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pcf_list_path(@pcf_list), "post" do
      assert_select "input#pcf_list_title[name=?]", "pcf_list[title]"
      assert_select "input#pcf_list_author[name=?]", "pcf_list[author]"
      assert_select "textarea#pcf_list_content[name=?]", "pcf_list[content]"
    end
  end
end
