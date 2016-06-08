require 'spec_helper'


feature 'enter names' do

	scenario 'submitting names' do
    sign_in_and_play
		expect(page).to have_content('Tim vs. Graham')

	end



# expects players to fill their name in a form

# submit the form

# see names on a screen


end