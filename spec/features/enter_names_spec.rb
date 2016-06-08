

feature 'enter names' do

	scenario 'submitting names' do
		
		visit('/')
		fill_in('Player One', with: 'Tim')
		fill_in('Player Two', with: 'Graham')
		click('submit')
		expect(page).to have_content('Tim vs. Graham')
	
	end



# expects players to fill their name in a form

# submit the form

# see names on a screen


end