feature '#returning to play page' do
  scenario 'click on the ok button and return to battle page' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    expect(page).to have_content("Jedd Vs. Enemy")
  end
end
