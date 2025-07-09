require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  let(:game) {
    Game.create!(
      mode: "MyString",
      developer: "MyString",
      system_requirement: nil
    )
  }

  before(:each) do
    assign(:game, game)
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(game), "post" do

      assert_select "input[name=?]", "game[mode]"

      assert_select "input[name=?]", "game[developer]"

      assert_select "input[name=?]", "game[system_requirement_id]"
    end
  end
end
