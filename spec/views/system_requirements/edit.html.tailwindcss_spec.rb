require 'rails_helper'

RSpec.describe "system_requirements/edit", type: :view do
  let(:system_requirement) {
    SystemRequirement.create!(
      name: "MyString",
      operational_system: "MyString",
      sotorage: "MyString",
      processor: "MyString",
      memory: "MyString",
      video_board: "MyString"
    )
  }

  before(:each) do
    assign(:system_requirement, system_requirement)
  end

  it "renders the edit system_requirement form" do
    render

    assert_select "form[action=?][method=?]", system_requirement_path(system_requirement), "post" do

      assert_select "input[name=?]", "system_requirement[name]"

      assert_select "input[name=?]", "system_requirement[operational_system]"

      assert_select "input[name=?]", "system_requirement[sotorage]"

      assert_select "input[name=?]", "system_requirement[processor]"

      assert_select "input[name=?]", "system_requirement[memory]"

      assert_select "input[name=?]", "system_requirement[video_board]"
    end
  end
end
