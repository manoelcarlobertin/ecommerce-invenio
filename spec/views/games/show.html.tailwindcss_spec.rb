require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    assign(:game, Game.create!(
      mode: "Mode",
      developer: "Developer",
      system_requirement: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mode/)
    expect(rendered).to match(/Developer/)
    expect(rendered).to match(//)
  end
end
