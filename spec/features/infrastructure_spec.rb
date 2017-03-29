describe "homepage view", :type => :feature do
  # it "displays that infrastructure is working" do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  it 'enter player names' do
    visit '/'
    fill_in 'player_1', :with => 'Jessica'
    fill_in 'player_2', :with => 'Steph'
    click_button 'Battle!'
    expect(page).to have_content 'Preparing Jessica and Steph to battle to the death'
  end
end
