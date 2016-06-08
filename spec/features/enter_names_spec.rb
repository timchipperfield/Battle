feature 'Enter names' do
  scenario 'submitting the names' do
    visit('/')
    fill_in(:player_1_name, with: 'Dave')
    fill_in(:player_2_name, with: 'Harry')
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Harry'
  end
end