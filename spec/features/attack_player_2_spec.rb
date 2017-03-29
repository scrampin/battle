feature "attack player 2" do

  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button 'Slap!'
    expect(page).to have_content "You slapped Steph!"
  end

end
