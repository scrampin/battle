
describe "homepage view", :type => :feature do
  it "displays that infrastructure is working" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
