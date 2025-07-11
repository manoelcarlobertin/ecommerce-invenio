require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        mode: "Mode",
        developer: "Developer",
        system_requirement: nil
      ),
      Game.create!(
        mode: "Mode",
        developer: "Developer",
        system_requirement: nil
      )
    ])
  end

  it "renders a list of games" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Mode".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Developer".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
