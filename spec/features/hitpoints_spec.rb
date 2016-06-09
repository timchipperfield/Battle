require 'spec_helper'

feature 'see hitpoints' do

  scenario 'shows both players HP' do
    sign_in_and_play
    expect(page).to have_content("Graham: 60/60 HP")
    expect(page).to have_content("Tim: 60/60 HP")
  end



end
