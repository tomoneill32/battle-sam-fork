feature "checks the homepage says 'Testing infrastructure working!'" do

  scenario "the home page returns a successful status code" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "page contains 'Testing infrastructure working!'" do
    visit("/")
    expect(page).to have_content('Testing infrastructure working!')
  end

end