feature "switch turns" do
  scenario "allows player 2 to act second" do
    sign_in_and_play
    click_button 'Slap!'
    click_button 'Back to play'
    click_button 'Slap!'
    expect(page).to have_content "Ruan's hp: 90"
  end
end
