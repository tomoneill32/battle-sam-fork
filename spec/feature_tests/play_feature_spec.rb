feature "Playing the game" do

  scenario "When player names have been entered, they appear in the game" do
    sign_in_and_play
    expect(page).to have_text 'Tom vs Sam'
  end

  scenario "Game has hit points for player 2" do
    sign_in_and_play
    expect(page).to have_text 'Sam hit points: '
  end

end