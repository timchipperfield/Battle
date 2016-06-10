feature "a player can lose" do

  scenario "when player 2 hitponts = 0" do
    complete_game
    expect(page).to have_content "Dave Wins!"
    expect(page).to have_content "Harry Loses!"
  end
end