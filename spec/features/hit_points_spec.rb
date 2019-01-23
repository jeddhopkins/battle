feature 'viewing hit points' do
  scenario 'view player 2\'s hit points' do
    visit('/')
    fill_in :player_1, with: 'Jedd'
    fill_in :player_2, with: 'Szilvi'
    click_button 'Fight!'
    expect(page).to have_content("Szilvi: 100HP")
  end
end
