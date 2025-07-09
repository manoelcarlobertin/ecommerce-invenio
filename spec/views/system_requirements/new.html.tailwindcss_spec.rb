require 'rails_helper'

RSpec.describe "system_requirements/new", type: :view do
  before(:each) do
    assign(:system_requirement, SystemRequirement.new(
      name: "MyString",
      operational_system: "MyString",
      sotorage: "MyString",
      processor: "MyString",
      memory: "MyString",
      video_board: "MyString"
    ))
  end

  it "renders new system_requirement form" do
    render

    assert_select "form[action=?][method=?]", system_requirements_path, "post" do

      assert_select "input[name=?]", "system_requirement[name]"

      assert_select "input[name=?]", "system_requirement[operational_system]"

      assert_select "input[name=?]", "system_requirement[sotorage]"

      assert_select "input[name=?]", "system_requirement[processor]"

      assert_select "input[name=?]", "system_requirement[memory]"

      assert_select "input[name=?]", "system_requirement[video_board]"
    end
  end
end
