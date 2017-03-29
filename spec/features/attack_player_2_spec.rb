feature "attack player 2" do

  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_link 'Slap!'
    expect(page).to have_content "Jessica slapped Steph!"
  end

end
