feature "homepage view" do
  before do
    sign_in_and_play
  end

  scenario 'view player names' do
    expect(page).to have_content 'Preparing Jessica and Steph to battle to the death'
  end

  scenario "displays player 2's hit points" do
    expect(page).to have_content "Steph's HP: 100"
  end
end
