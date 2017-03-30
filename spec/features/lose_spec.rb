feature 'lose' do
  scenario 'when a player reaches 0 hp they DIE' do
    sign_in_and_play
    18.times {
      attack_player
    }
    click_button 'Slap!'
    expect(page).to have_content "SORRY ¯\\_(ツ)_/¯ Steph, you're dead!"
  end

end
