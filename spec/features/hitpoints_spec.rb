
require 'spec_helper'

feature 'see hitpoints' do

  scenario 'player 1 see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content("Graham: 60/60 HP")

  end

end


#As Player 1,
#So I can see how close I am to winning
#I want to see Player 2's Hit Points
