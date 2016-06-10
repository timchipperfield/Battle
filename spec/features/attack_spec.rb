feature "FEATURE: attacking" do
	scenario "attack player two" do
		sign_in_and_play
		click_link 'Attack'
		expect(page).to have_content "Dave attacked Harry"
	end

	scenario "player 1 be attacked by player 2" do
		sign_in_and_play
		click_link 'Attack'
		click_link 'Next Turn'
		click_link 'Attack'
		expect(page).to have_content "Harry attacked Dave"
	end

  scenario "reduce player 2 hitpoints by 10" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Harry: 80HP'
    expect(page).to have_content 'Harry: 70HP'
  end

end
