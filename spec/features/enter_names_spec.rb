require 'spec_helper'


feature 'enter names' do

	scenario 'submitting names' do

		visit('/')
		fill_in :player_1_name, with: 'Tim'
		fill_in :player_2_name, with: 'Graham'
		click_button('submit')
		expect(page).to have_content('Tim vs. Graham')

	end



# expects players to fill their name in a form

# submit the form

# see names on a screen


end