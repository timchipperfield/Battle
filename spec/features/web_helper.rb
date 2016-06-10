def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Graham'
    click_button('Submit')
end

def attack_cycle
  click_link("Attack")
  click_link("OK")
end