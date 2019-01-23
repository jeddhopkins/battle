def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Jedd'
  fill_in :player_2, with: 'Szilvi'
  click_button 'Fight!'
end
