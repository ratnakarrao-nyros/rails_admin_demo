require 'spec_helper'

describe "organizations/new" do
  before(:each) do
    assign(:organization, stub_model(Organization,
      :name => "MyString",
      :size => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organizations_path, "post" do
      assert_select "input#organization_name[name=?]", "organization[name]"
      assert_select "input#organization_size[name=?]", "organization[size]"
      assert_select "input#organization_url[name=?]", "organization[url]"
    end
  end
end
