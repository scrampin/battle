feature "Hit points" do
  scenario "reduce Player 2's HP by 10 on initial attack" do
    sign_in_and_play
    click_button 'Slap!'
    expect(page).to have_content "Steph's hp: 90"
  end
end
