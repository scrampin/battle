feature "switch turns" do
  scenario "allows player 2 to act second" do
    sign_in_and_play
    click_link 'Slap!'
    click_link 'Back to play'
    click_link 'Slap!'
    expect(page).to have_content "Ruan's hp: 90"
  end
end
