feature '#attacking player 2' do
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Jedd attacked Enemy!")
  end

  scenario 'when attacking player 2, hit points decrease by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Enemy: 90HP")
  end
end
