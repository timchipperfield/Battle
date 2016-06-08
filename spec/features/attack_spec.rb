feature "attacking" do
	scenario "attack player two" do
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content "Dave attacked Harry"
	end
end