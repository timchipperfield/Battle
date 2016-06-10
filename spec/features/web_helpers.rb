def sign_in_and_play
  visit('/')
  fill_in(:player_1_name, with: 'Dave')
  fill_in(:player_2_name, with: 'Harry')
  click_button 'Submit'
end

def attack_next_turn
click_link "Attack"
click_button "Next Turn"
end

def complete_game
  sign_in_and_play
  15.times { attack_next_turn }
end