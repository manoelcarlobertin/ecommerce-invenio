require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      mode: "MyString",
      developer: "MyString",
      system_requirement: nil
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input[name=?]", "game[mode]"

      assert_select "input[name=?]", "game[developer]"

      assert_select "input[name=?]", "game[system_requirement_id]"
    end
  end
end
