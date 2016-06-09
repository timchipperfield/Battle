feature 'End Turn' do
  scenario 'Player 1 finishes his turn' do
    sign_in_and_play
		click_link('Attack')
    click_link('OK')
    expect(page).to have_content "Graham's turn"

  end
end
