feature "attack player" do

  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_link 'Slap!'
    expect(page).to have_content "Ruan slapped Steph!"
  end

  scenario "current player name should display on play page" do
    sign_in_and_play
    expect(page).to have_content "Ruan's turn to attack!"
  end

  scenario "current player name should display on play page" do
    sign_in_and_play
    click_link 'Slap!'
    click_button 'Back to play'
    expect(page).to have_content "Steph's turn to attack!"
  end

end
