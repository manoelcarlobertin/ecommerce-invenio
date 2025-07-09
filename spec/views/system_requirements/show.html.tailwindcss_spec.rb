require 'rails_helper'

RSpec.describe "system_requirements/show", type: :view do
  before(:each) do
    assign(:system_requirement, SystemRequirement.create!(
      name: "Name",
      operational_system: "Operational System",
      sotorage: "Sotorage",
      processor: "Processor",
      memory: "Memory",
      video_board: "Video Board"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Operational System/)
    expect(rendered).to match(/Sotorage/)
    expect(rendered).to match(/Processor/)
    expect(rendered).to match(/Memory/)
    expect(rendered).to match(/Video Board/)
  end
end
