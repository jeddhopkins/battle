feature 'entering names' do
  scenario 'players can fill in names, submit, and see the names' do
    visit('/')
    fill_in :player_1, with: 'Jedd'
    fill_in :player_2, with: 'Szilvi'
    click_button 'Fight!'
    expect(page).to have_content("Jedd Vs. Szilvi")
  end
end
