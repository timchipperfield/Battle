require 'spec_helper'

feature "End Game" do

  scenario "player 2 lost the battle" do
    sign_in_and_play
    11.times { attack_cycle }
    expect(page).to have_content "Game Over! Tim Wins"
  end
end