require 'spec_helper'

describe "pcf_lists/show" do
  before(:each) do
    @pcf_list = assign(:pcf_list, stub_model(PcfList,
      :title => "Title",
      :author => "Author",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/MyText/)
  end
end
