require 'spec_helper'

feature 'attack' do

	scenario 'player 1 attacks player 2' do
		sign_in_and_play
		click_link('Attack')
		expect(page).to have_content('Tim attacked Graham!')
	end

	scenario 'attack from player 1 reduces player 2 hitpoints' do
		sign_in_and_play
		click_link('Attack')
		expect(page).to have_content('Graham: 50/60 HP')
  end

end