feature "Playing the game" do

  scenario "page contains 'Testing infrastructure working!'" do
    visit("/")
    fill_in 'player_1', with: 'Tom'
    fill_in 'player_2', with: 'Sam'
    click_on 'Submit'
    expect(page).to have_text 'Tom vs Sam'
  end

end