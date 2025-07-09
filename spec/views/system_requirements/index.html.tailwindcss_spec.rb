require 'rails_helper'

RSpec.describe "system_requirements/index", type: :view do
  before(:each) do
    assign(:system_requirements, [
      SystemRequirement.create!(
        name: "Name",
        operational_system: "Operational System",
        sotorage: "Sotorage",
        processor: "Processor",
        memory: "Memory",
        video_board: "Video Board"
      ),
      SystemRequirement.create!(
        name: "Name",
        operational_system: "Operational System",
        sotorage: "Sotorage",
        processor: "Processor",
        memory: "Memory",
        video_board: "Video Board"
      )
    ])
  end

  it "renders a list of system_requirements" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Operational System".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Sotorage".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Processor".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Memory".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Video Board".to_s), count: 2
  end
end
