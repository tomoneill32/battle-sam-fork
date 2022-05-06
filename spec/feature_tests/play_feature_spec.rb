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

feature "Attacking player 2" do
  scenario "You attack player 2 and get confirmation" do
    sign_in_and_play
    click_on "Attack"
    expect(page).to have_text "You attacked Sam. It's super effective"
  end

  scenario "You attack player 2 and their HP reduces by 10" do
    sign_in_and_play
    click_on "Attack"
    expect(page).to have_text "Sam's HP is 90/100"
  end
end