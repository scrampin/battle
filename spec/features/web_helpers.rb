def sign_in_and_play
  visit '/'
  fill_in 'player_1', :with => 'Ruan'
  fill_in 'player_2', :with => 'Steph'
  click_button 'Battle!'
end

def attack_player
    click_button 'Slap!'
    click_button 'Back to play'
end
