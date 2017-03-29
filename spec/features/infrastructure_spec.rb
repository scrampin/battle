feature "homepage view" do
  before do
    visit '/'
    fill_in 'player_1', :with => 'Jessica'
    fill_in 'player_2', :with => 'Steph'
    click_button 'Battle!'
  end

  scenario 'view player names' do
    expect(page).to have_content 'Preparing Jessica and Steph to battle to the death'
  end

  scenario "displays player 2's hit points" do
    expect(page).to have_content "Steph's hp: 100"
  end
end
